#ifndef __LED_THREAD
#define __LED_THREAD

#include "ch32v30x_gpio.h"
#include "rtthread.h"

static rt_thread_t thread1 = RT_NULL;
#define blue_thread_stack_size 320 //内存分配
#define blue_thread_priority 15 //优先级
#define blue_thread_tick 5
void blue_gpio_init(void);
static void blue_thread_entry(void *parameter);
int blue_thread(void);

static struct rt_thread thread2;//与blue_thread区别
static char stack_size[320];
#define red_thread_priority 12 //优先级
#define red_thread_tick 5
void red_gpio_init(void);
static void red_thread_entry(void *parameter);
int red_thread(void);

int start_all_thread(void);

#endif