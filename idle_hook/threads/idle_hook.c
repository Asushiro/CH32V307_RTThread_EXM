#include "rtthread.h"
#include "idle_hook.h"
static rt_thread_t thread1 = RT_NULL;
static rt_thread_t thread2 = RT_NULL;
rt_uint32_t thread_num;

//线程1与线程2共用入口函数
static void all_thread_entry(void *parameter){
    thread_num = (rt_uint32_t )parameter;
    while(1){
        rt_kprintf("thread%d is running\n",thread_num);
        rt_thread_mdelay(500);
    }
}

//设置钩子调度器的执行函数
//参数为两个指向两个线程的指针
static void hook_schdule(struct rt_thread *thread1,struct rt_thread *thread2){
    //name属性是在创建线程时被定义的
    rt_kprintf("running:%s -> next:%s\n",thread1->name,thread2->name);
}

//创建线程1与线程2
int all_thread(void){
    //1.设置钩子函数
    rt_scheduler_sethook(hook_schdule);
    //2.检查线程是否已创建
    if (thread1 && thread2 != RT_NULL)
        return RT_EBUSY;
    else{
    //3.创建线程并启动
    thread1 = rt_thread_create(
                "thread1",  //name属性
                all_thread_entry,
                (void *)1,
                ALL_THREAD_STACK_SIZE,
                THREAD1_PRIORITY,
                ALL_THREAD_TICK); 
    if (thread1 != RT_NULL)
        rt_thread_startup(thread1);

    thread2 = rt_thread_create(
                "thread2",
                all_thread_entry,
                (void *)2,
                ALL_THREAD_STACK_SIZE,
                THREAD2_PRIORITY,
                ALL_THREAD_TICK-5);
    if (thread2 != RT_NULL)
        rt_thread_startup(thread2);
    }


    return 0;
}

MSH_CMD_EXPORT(all_thread,start all the thread with hook function);