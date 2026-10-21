#ifndef __IDLE_HOOK
#define __IDLE_HOOK

#define ALL_THREAD_STACK_SIZE 1024
#define ALL_THREAD_TICK 10
#define THREAD1_PRIORITY 10
#define THREAD2_PRIORITY 10

static void all_thread_entry(void *parameter);
static void hook_schdule(struct rt_thread *thread1,struct rt_thread *thread2);
int all_thread(void);

#endif