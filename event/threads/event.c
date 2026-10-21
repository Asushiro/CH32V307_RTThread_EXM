#include "rtthread.h"
#include "event.h"
//创建线程对象
static rt_thread_t thread_send = RT_NULL;   //用于发送事件
static rt_thread_t thread_recv = RT_NULL;   //用于接收事件
//创建事件对象
static rt_event_t event = RT_NULL;
//全局变量
static rt_err_t result;             //判断事件是否符合条件
static rt_uint32_t event_return;    //返回当前符合条件的事件
//入口函数
static void thread_recv_event_entry(void *parameter){
    int success = 0;//事件计数
    while(1){
        //触发完两种模式后就结束
        if (success == 2){
            rt_kprintf("All modes finished\n");
            return;
        }
        //任意一个事件触发即可
        result = rt_event_recv(event,
                EVENT_FLAG3|EVENT_FLAG5,
                RT_EVENT_FLAG_OR|RT_EVENT_FLAG_CLEAR,   
                RT_WAITING_FOREVER,
                &event_return);

        if (result != RT_EOK)
            rt_kprintf("recv failed\n");
        else{
            success ++;
            rt_kprintf("OR MODE recv successed,event:%x\n",&event_return);
        }

        rt_kprintf("MODE CHANGED:\n");
        rt_thread_mdelay(500);

        //必须同时触发两个事件
        result = rt_event_recv(event,
            EVENT_FLAG3|EVENT_FLAG5,
            RT_EVENT_FLAG_AND|RT_EVENT_FLAG_CLEAR,   
            RT_WAITING_FOREVER,
            &event_return);

        if (result != RT_EOK)
            rt_kprintf("recv failed\n");
        else{
            success++;
            rt_kprintf("AND MODE recv successed,event:%x\n",&event_return); 
        }
    }
}
static void thread_send_event_entry(void *parameter){
   int success = 0;//事件计数
    while(1){
        //发送完两种事件后就结束
        if (success == 2){
            // rt_kprintf("All events sended\n");
            return;
        }
        //发送第一种事件
        rt_event_send(event,EVENT_FLAG3);
        rt_kprintf("EVENT1 sended\n");
        success++;
        rt_thread_mdelay(50);
        //发送两种事件
        rt_event_send(event,EVENT_FLAG3|EVENT_FLAG5);
        rt_kprintf("EVENT1 and EVENT2 sended\n");
        success++;
        // rt_thread_mdelay(50);
    }
}
//创建线程与事件
int event_process(void){
    //创建线程
    if(thread_recv != RT_NULL && thread_send != RT_NULL)
        return RT_EBUSY;
    else{
        thread_recv = rt_thread_create(
            "thread_recv",
            thread_recv_event_entry,
            RT_NULL,
            THREAD_STACK_SIZE,
            THREAD_PRIORITY,
            THREAD_TIME_SLICE);
        thread_send = rt_thread_create(
            "thread_send",
            thread_send_event_entry,
            RT_NULL,
            THREAD_STACK_SIZE,
            THREAD_PRIORITY-1,
            THREAD_TIME_SLICE);
        
        if(thread_recv != RT_NULL && thread_send != RT_NULL){
            rt_thread_startup(thread_recv);
            rt_thread_startup(thread_send);
        }
    }
    //创建事件
    event = rt_event_create("event",RT_IPC_FLAG_FIFO);
    return 0;
}

MSH_CMD_EXPORT(event_process,simulate the process of event);