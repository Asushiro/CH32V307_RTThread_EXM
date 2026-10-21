#ifndef __MAILBOX_H
#define __MAILBOX_H

#define THREAD_PRIORITY 14
#define THREAD_STACK_SIZE 512
#define THREAD_TIME_SLICE 5
#define MAILBOX_SIZE 64 //×î¶à´æ16·âÓÊ¼þ
static void thread_recv_entry(void *parameter);
static void thread_send_entry(void *parameter);
int mail_process(void);

#endif