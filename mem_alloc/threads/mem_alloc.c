#include "rtthread.h"
#include "mem_alloc.h"
//创建线程对象
static rt_thread_t mem_require = RT_NULL;
static rt_thread_t mem_release = RT_NULL;
//创建内存池对象
static rt_mp_t mempool = RT_NULL;
//全局变量
static rt_uint16_t *ptr[10]; //线程的内存块
//入口函数
/*线程1获取内存块*/
static void mem_require_entry(void *parameter){
    int i = 0;
    while(1){
        if (i == 10) return;//获取过程只执行10次
        if (ptr[i] != RT_NULL) return;//如果当前获取的内存块非空就等线程2释放一个
        else{
            //从内存池中获取一个内存块
            ptr[i] = rt_mp_alloc(mempool,RT_WAITING_FOREVER);
            rt_kprintf("required 1 memblock:ptr[%d]\n",i);
            i++;
        }
        rt_thread_mdelay(20);
    }
}
/*线程2释放内存块，但前提是线程1必须至少获取了1个内存块才行*/
static void mem_release_entry(void *parameter){
    int i = 0;
    while(1){
        if (i == 10) return;
        if (ptr[i] == RT_NULL) return;//如果当前的内存块为空就等线程1获取一个
        else{
            //先把当前的内存块清空再释放一个内存块
            ptr[i] = RT_NULL;
            rt_mp_free(ptr[i]);
            rt_kprintf("released 1 memblock :ptr[%d]\n",i);
            i++;
        }
        rt_thread_mdelay(100);
    }
}
//创建线程与内存池
int mem_process(void){
    //创建线程
    if (mem_require != RT_NULL && mem_release != RT_NULL)
        return RT_EBUSY;
    else{
        mem_require = rt_thread_create("mem_require",
                    mem_require_entry,
                    RT_NULL,
                    THREAD_STACK_SIZE,
                    THREAD_PRIORITY-1,
                    THREAD_TIME_SLICE);
        mem_release = rt_thread_create("mem_release",
                    mem_release_entry,
                    RT_NULL,
                    THREAD_STACK_SIZE,
                    THREAD_PRIORITY,
                    THREAD_TIME_SLICE);
        if (mem_require != RT_NULL && mem_release != RT_NULL){
            rt_thread_startup(mem_require);
            rt_thread_startup(mem_release);
        }
    }
    //创建内存池
    mempool = rt_mp_create("mempool",
            10, //内存块数量
            60);/*同时指针包含4个字节加在这上面，所以一个内存块的实际大小为64。
                内存池大小为(60 + 4) * 10 = 640*/
    return 0;
}
MSH_CMD_EXPORT(mem_process,simulate the process of mem_process);