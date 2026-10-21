#ifndef __TIMER_H
#define __TIMER_H

#define TIMER1_OUT_TIME 10      //10tick
#define TIMER2_OUT_TIME 1000     //1s
static void timer1_thread_entry(void *parameter);
static void timer2_thread_entry(void *parameter);
int timer1_thread(void);
int timer2_thread(void);
void led_init(void);

#endif