#include "rtthread.h"
#include "mailbox.h"
//创建线程对象
static rt_thread_t thread_recv = RT_NULL;
static rt_thread_t thread_send = RT_NULL;
//创建邮箱对象
static rt_mailbox_t mailbox = RT_NULL;
//全局变量
// static char *mail_str;     //邮件缓冲区
static rt_err_t recv_result = RT_NULL;  //获取邮件结果
static char mail1[] = "1st mail";
static char mail2[] = "2nd mail";
//入口函数
static void thread_recv_entry(void *parameter){
    int recv_cnt = 0;          //接收计数器
    char *mail_str;     //邮件缓冲区
    while(1){
        if (recv_cnt == 2) return;  //只接收2封邮件
        //尝试接收第一封邮件
        recv_result = rt_mb_recv(mailbox,(rt_uint32_t *)&mail_str,RT_WAITING_FOREVER);
        if (recv_result != RT_EOK) {
            rt_kprintf("recv the 1st mail failed\n");
            return;
        }else{
            recv_cnt++;
            rt_kprintf("mail1 checked,the content:%s\n",mail_str);
        }
        rt_kprintf("ready to recv the 2nd mail\n");
        rt_thread_mdelay(200);
        //尝试接收第二封邮件
        recv_result = rt_mb_recv(mailbox,(rt_uint32_t *)&mail_str,RT_WAITING_FOREVER);
        if (recv_result != RT_EOK){
            rt_kprintf("recv the 2st mail failed\n");
            return;
        }else{
            recv_cnt++;
            rt_kprintf("mail2 checked,the content:%s\n",mail_str);
        }
        rt_thread_mdelay(200);
    }
}
static void thread_send_entry(void *parameter){
    int send_cnt = 0;   //发送计数器
    while(1){
        if (send_cnt == 2) return; //只发2封邮件
        else{
            //发送第一封邮件
            rt_mb_send(mailbox,(rt_uint32_t)mail1);
            rt_kprintf("mail1 sended\n");
            send_cnt ++;

            rt_kprintf("ready to send the 2nd mail\n");
            rt_thread_mdelay(200);

            //发送第二封邮件
            rt_mb_send(mailbox,(rt_uint32_t)mail2);
            rt_kprintf("mail2 sended\n");
            send_cnt ++;
        }
    }
}
//创建线程与邮箱
int mail_process(void){
    //创建线程
    if (thread_recv != RT_NULL && thread_send != RT_NULL)
        return RT_EBUSY;
    else{
        thread_recv = rt_thread_create("thread_recv",
                thread_recv_entry,
                RT_NULL,
                THREAD_STACK_SIZE,
                THREAD_PRIORITY,
                THREAD_TIME_SLICE);
        thread_send = rt_thread_create("thread_send",
                thread_send_entry,
                RT_NULL,
                THREAD_STACK_SIZE,
                THREAD_PRIORITY-1,
                THREAD_TIME_SLICE);
        
        if (thread_recv != RT_NULL && thread_send != RT_NULL){
            rt_thread_startup(thread_recv);
            rt_thread_startup(thread_send);
        }else rt_kprintf("init failed");
    }
    //创建邮箱
    mailbox = rt_mb_create("mailbox",
                MAILBOX_SIZE / 4,
                RT_IPC_FLAG_FIFO);
    return 0;
}

MSH_CMD_EXPORT(mail_process,thread1 recv mail and thread2 send mail);