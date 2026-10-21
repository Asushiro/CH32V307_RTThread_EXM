#ifndef __SEMPHORE_H
#define __SEMPHORE_H

#define THREAD_PRIORITY 15
#define THREAD_STACK_SIZE 512
#define THREAD_TIME_SLICE 5
static void thread1_entry(void *parameter);
static void thread2_entry(void *parameter);
int semaphore_thread(void);

#endif