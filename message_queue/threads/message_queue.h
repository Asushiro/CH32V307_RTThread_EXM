#ifndef __MESSAGE_QUEUE_H
#define __MESSAGE_QUEUE_H

#define THREAD_PRIORITY 15
#define THREAD_STACK_SIZE 512
#define THREAD_TIME_SLICE 5
/* 
注意这里的MSG_SIZE定义为1，但系统是以4个字节对齐，MSG_SIZE因此被扩展至4个字节。
若MSG_SIZE的值为5，则自动扩展至8个字节。
所以MSG_SIZE占据的字节量是系统对齐量的整数倍。
*/
#define MSG_SIZE    1
#define MSG_MAX     3
static void mq_get_entry(void *parameter);
static void mq_res_entry(void *parameter);
int mq_process(void);
#endif