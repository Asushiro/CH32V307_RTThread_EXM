#include "rtthread.h"
#include "message_queue.h"
ALIGN(4);   //以4个字节对齐
//创建线程对象
static rt_thread_t mq_get_thread = RT_NULL; //接收消息
static rt_thread_t mq_res_thread = RT_NULL; //发送消息
//创建队列对象
static rt_mq_t mq = RT_NULL;
//全局变量
static rt_err_t mq_result;  //获取消息结果
static char buf = 'A';      //消息缓冲区
//入口函数
static void mq_get_entry(void *parameter){
    int recv_cnt = 0;
    char get_buf;
    while(1)
    {
        if (recv_cnt == 3){
            rt_kprintf("get:got all msg");
            return;
        }
        //从消息队列获取一条消息
        mq_result = rt_mq_recv(mq,&get_buf,sizeof(get_buf),RT_WAITING_FOREVER);
        if(mq_result != RT_EOK) return;
        else{
            rt_kprintf("get:%c\n",get_buf);
            recv_cnt++;
        }
        rt_kprintf("get:ready to get next mq\n");
        rt_thread_mdelay(50);
    }
}
static void mq_res_entry(void *parameter){
    while(1)
    {
        if (buf == 'D'){    //A B C全发送完才行
            rt_kprintf("res:all msg sended\n");
            return;
        }
        //发送消息到消息队列
        rt_mq_send(mq,&buf,sizeof(buf));
        buf ++;
        rt_kprintf("res:ready to send next mq\n");
        rt_thread_mdelay(20);
    }
}
//创建线程与队列
int mq_process(void){
    //创建线程
    if (mq_get_thread != RT_NULL && mq_res_thread != RT_NULL)
        return RT_EBUSY;
    else{
        mq_get_thread = rt_thread_create(
            "mq_get_thread",
            mq_get_entry,
            RT_NULL,
            THREAD_STACK_SIZE,
            THREAD_PRIORITY,
            THREAD_TIME_SLICE);
        mq_res_thread = rt_thread_create(
            "mq_res_thread",
            mq_res_entry,
            RT_NULL,
            THREAD_STACK_SIZE,
            THREAD_PRIORITY-1,
            THREAD_TIME_SLICE);
        if (mq_get_thread != RT_NULL && mq_res_thread != RT_NULL){
            rt_thread_startup(mq_get_thread);
            rt_thread_startup(mq_res_thread);
        }
    }
    //创建队列
    mq = rt_mq_create("mq",
        MSG_SIZE,
        MSG_MAX,
        RT_IPC_FLAG_FIFO);
    return 0;
}

MSH_CMD_EXPORT(mq_process,simulate the process of message_queue);