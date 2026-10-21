#include "rtthread.h"
#include "producer_consumer.h"
//创建静态线程对象
static struct rt_thread producer;
static struct rt_thread consumer;
//线程栈大小
static char producer_stack_size[512];
static char consumer_stack_size[512];
//全局变量
static int set = 0;                 //生产计数
static int get = 0;                 //消费计数
static struct rt_semaphore lock;    //保证线程间互斥的信号量
static struct rt_semaphore empty;   //空位信号量
static struct rt_semaphore full;    //满位信号量
static int arry[MAXSEM];            //共享资源区 MAXSEM=5
//入口函数
static void producer_entry(void *parameter){
    int cnt = 0;
    while(cnt < 10){
        //尝试获取空位
        rt_sem_take(&empty,RT_WAITING_FOREVER);
        //上锁，保证与消费者的互斥
        rt_sem_take(&lock,RT_WAITING_FOREVER);
        //开始生产
        arry[set % MAXSEM] = cnt + 1;
        set ++;
        rt_kprintf("the producer generated a number: %d\n",arry[get % MAXSEM]);
        //解锁
        rt_sem_release(&lock);
        //释放一个满位
        rt_sem_release(&full);
        cnt ++;

        rt_thread_mdelay(20);
    }
}
static void consumer_entry(void *parameter){
    int sum = 0;
    while(1){
        //累加到10时直接返回
        if (sum == 10) return;

        //尝试获取满位
        rt_sem_take(&full,RT_WAITING_FOREVER);
        //上锁，保证与消费者的互斥
        rt_sem_take(&lock,RT_WAITING_FOREVER);
        //开始消费
        sum += arry[get % MAXSEM];
        rt_kprintf("the consumer[%d] get a number: %d\n", (get % MAXSEM), arry[get % MAXSEM]);
        get ++;
        //解锁
        rt_sem_release(&lock);
        //释放一个空位
        rt_sem_release(&empty);
        rt_thread_mdelay(50);
    }
}
//线程与信号量初始化
int producer_consumer(void){
    rt_sem_init(&lock,"lock",1,RT_IPC_FLAG_FIFO);
    rt_sem_init(&full,"full",MAXSEM,RT_IPC_FLAG_FIFO);
    rt_sem_init(&empty,"empty",0,RT_IPC_FLAG_FIFO);

    //生产者
    rt_thread_init(
        &producer,
        "producer",
        producer_entry,
        RT_NULL,
        &producer_stack_size[0],
        sizeof(producer_stack_size),
        THREAD_PRIORITY-1,
        THREAD_TIME_SLICE);
    //消费者
    rt_thread_init(
        &consumer,
        "consumer",
        consumer_entry,
        RT_NULL,
        &consumer_stack_size[0],
        sizeof(consumer_stack_size),
        THREAD_PRIORITY,
        THREAD_TIME_SLICE);
    rt_thread_startup(&producer);
    rt_thread_startup(&consumer);
    return 0;
}

MSH_CMD_EXPORT(producer_consumer,simulate the producer-consumer problem);