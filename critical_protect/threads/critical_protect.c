#include "rtthread.h"
#include "rthw.h"
#include "crtitical_protect.h"

//线程对象
static rt_thread_t thread1 = RT_NULL;
static rt_thread_t thread2 = RT_NULL;
//线程入口函数
static void all_thread_entry(void *parameter){
    rt_base_t flag; //临界区标识
    rt_uint32_t cnt;//共享资源
    cnt = (rt_uint32_t)parameter;
    while(1){
        rt_kprintf("thread[%d]'s cnt is %d\n",parameter,cnt);
    //方法1：关闭中断
        flag = rt_hw_interrupt_disable();
        //临界区起始
        cnt ++;//虽然两个线程都共享cnt变量，但计数值对于每个线程来说是不一致的
        //临界区结束
        rt_hw_interrupt_enable(flag);

        rt_thread_mdelay(1000);

    /*方法2：禁止调度
        //临界区起始
        rt_enter_critical();    //上锁
        
        ------------------------//临界区

        //临界区结束
        rt_exit_critical();     //解锁
    */
    }
}


//线程初始化
int critical_thread(void){
    if (thread1 != RT_NULL)
        return RT_EBUSY;
    else{
        thread1 = rt_thread_create(
            "thread1",
            all_thread_entry,
            (void *)1,
            THREAD_STACK_SIZE,
            THREAD_PRIORITY,
            THREAD_TIME_SLICE);

        thread2 = rt_thread_create(
            "thread2",
            all_thread_entry,
            (void *)2,
            THREAD_STACK_SIZE,
            THREAD_PRIORITY,
            THREAD_TIME_SLICE);
        
        if (thread1 != RT_NULL && thread2 != RT_NULL){
            rt_thread_startup(thread1);
            rt_thread_startup(thread2);
        }
    }
    


    return 0;
}

MSH_CMD_EXPORT(critical_thread,start all the thread and check the protection of critical);