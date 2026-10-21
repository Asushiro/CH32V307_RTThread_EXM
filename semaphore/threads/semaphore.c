#include "rtthread.h"
#include "rthw.h"
#include "semaphore.h"
//实现效果线程1首先得到信号量，每当线程1计数值为十时，释放信号量，线程2计数值加一。

//创建信号量对象
static rt_sem_t dynamic_semaphore = RT_NULL;
//创建线程对象
static rt_thread_t thread1 = RT_NULL;
static rt_thread_t thread2 = RT_NULL;
//全局变量
// static rt_uint32_t cnt; //共享计数值，没测试过
static rt_err_t result = RT_NULL;//信号量获取检测
//入口函数
static void thread1_entry(void *parameter){
    static rt_uint32_t cnt;
    cnt = (rt_uint32_t)parameter;
    while(1){
        if (cnt <= 100)
            cnt++;
        else return;//cnt到100了就不执行后续内容了
        if ((cnt % 10) == 0){ //每记10个数
            rt_kprintf("thread1 released 1 semaphore and cnt is %d\n",cnt);
            rt_sem_release(dynamic_semaphore);  //释放信号量
            //只设一个共享变量cnt来控制计数，这里需要设置临界区，实际未测试过是否成功。
            // rt_enter_critical(); 
            // cnt++;
            // rt_exit_critical();
        }
        rt_thread_mdelay(200);  //需要线程1让出CPU
    }
}

static void thread2_entry(void *parameter){
    static rt_uint32_t cnt;
    cnt = (rt_uint32_t)parameter;
    while(1){
        //永久等待，没有得到信号量就永远不执行后续
        result = rt_sem_take(dynamic_semaphore,RT_WAITING_FOREVER);
        if (result != RT_EOK){
            rt_kprintf("thread2 got semaphore failed\n");
            rt_sem_delete(dynamic_semaphore);   //删除信号量
        }else{
            //只设一个共享变量cnt来控制计数，这里需要设置临界区，实际未测试过是否成功。
            // rt_enter_critical();    
            rt_kprintf("thread2 got 1 semaphore and cnt is %d\n",cnt);
            cnt++;
            // rt_exit_critical();
        }
        // rt_thread_mdelay(200);
    }
}

//线程初始化
int semaphore_thread(void){
    //创建信号量
    if (dynamic_semaphore != RT_NULL)
        return RT_EBUSY;
    else{
        dynamic_semaphore = rt_sem_create(
            "dynamic_semaphore",
            0,  //初始值
            RT_IPC_FLAG_FIFO);
        //设置线程获得信号量的顺序为先进先出，另一个参数为RT_IPC_FLAG_PRIO，优先级顺序排队   
    }

    //创建线程
    if (thread1 != RT_NULL && thread2 != RT_NULL)
        return RT_EBUSY;
    else {
        thread1 = rt_thread_create(
            "thread1",
            thread1_entry,
            (void *)1,
            THREAD_STACK_SIZE,
            THREAD_PRIORITY,
            THREAD_TIME_SLICE);
        thread2 = rt_thread_create(
            "thread2",
            thread2_entry,
            (void *)1,
            THREAD_STACK_SIZE,
            THREAD_PRIORITY-1,
            THREAD_TIME_SLICE);
    }

    if (thread1 != RT_NULL && thread2 != RT_NULL){
        rt_thread_startup(thread1);
        rt_thread_startup(thread2);
    }

    return 0;
}

MSH_CMD_EXPORT(semaphore_thread,start all the thread and use the semaphore to arrange);
