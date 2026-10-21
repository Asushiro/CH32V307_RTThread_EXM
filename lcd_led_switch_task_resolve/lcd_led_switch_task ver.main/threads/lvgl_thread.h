#ifndef __LVGL_THREAD_H
#define __LVGL_THREAD_H

// #define LVGL_CONTROL_TIM_CLOCK           10000                                             
// #define LVGL_CONTROL_TIM_PRESCALER       (SystemCoreClock / LVGL_CONTROL_TIM_CLOCK - 1)     
// #define LVGL_CONTROL_TIM_PERIOD_1MS      (LVGL_CONTROL_TIM_CLOCK / 100000 * 100 - 1)       
void lvgl_timer_init(void);
void lvgl_thread_entry(void *parameter);
int tlvgl(void);

#endif