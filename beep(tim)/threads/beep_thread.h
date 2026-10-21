#ifndef __TIM_THREAD_H
#define __TIM_THREAD_H

#define BEEP_PIN 81
#define TIM_PRIORITY 15
#define TIM_STACK_SIZE 512
#define TIM_TIME_SLICE 5
#define TIM_TIMEOUT_TIME 500

static void tim_timeout_entry(void *parameter);
int beep_timer(void);

#endif