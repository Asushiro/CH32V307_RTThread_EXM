#ifndef __CRITICAL_PROTECT_H
#define __CRITICAL_PROTECT_H

#define THREAD_STACK_SIZE 512
#define THREAD_PRIORITY 15
#define THREAD_TIME_SLICE 10

static void all_thread_entry(void *parameter);
int critical_thread(void);

#endif