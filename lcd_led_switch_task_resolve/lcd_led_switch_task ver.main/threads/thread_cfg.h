#ifndef __THREAD_CFG_H
#define __THREAD_CFG_H

/* SYSTEM INCLUDE*/
#include "rtthread.h"
#include "drivers/pin.h"
#include "lvgl.h"

/*             HAL INCLUDE             */
/**/
#ifdef __HAL_USING_H
#include "GT911.h"                  //LCD驱动
#include "led.h"                    //LED驱动
#endif

/*             LVGL INCLUDE            */
/**/
#ifdef __LVGL_USING_H
#include "lvgl_thread.h"
#include "lv_port_disp_template.h"  //LVGL显示初始化
#include "lv_port_indev_template.h" //LVGL输入初始化
#endif

/*              全局变量                */
//线程初始化参数
#define THREAD_USING_PRIORITY       //使用默认优先级设置
#define THREAD_USING_TIMESLICE      //使用默认时间片设置
#define THREAD_USING_STACK          //使用默认栈大小设置(动态分配)

#ifndef THREAD_USING_PRIORITY
#define THREAD_PRIORITY_15          15
#define THREAD_PRIORITY_14          14
#define THREAD_PRIORITY_13          13
#define THREAD_PRIORITY_12          12
#define THREAD_PRIORITY_11          11
#define THREAD_PRIORITY_10          10
#define THREAD_PRIORITY_9           9
#define THREAD_PRIORITY_8           8
#define THREAD_PRIORITY_7           7
#define THREAD_PRIORITY_6           6
#define THREAD_PRIORITY_5           5
#endif

#ifndef THREAD_USING_TIMESLICE
#define THREAD_TIMESLICE_5          5
#define THREAD_TIMESLICE_10         10
#define THREAD_TIMESLICE_20         20
#define THREAD_TIMESLICE_30         30
#define THREAD_TIMESLICE_40         40
#define THREAD_TIMESLICE_50         50
#define THREAD_TIMESLICE_100        100
#define THREAD_TIMESLICE_200        200
#define THREAD_TIMESLICE_500        500
#define THREAD_TIMESLICE_1000       1000
#define THREAD_TIMESLICE_2000       2000
#endif

#ifndef THREAD_USING_STACK
#define THREAD_STACK_64             64
#define THREAD_STACK_128            128
#define THREAD_STACK_256            256
#define THREAD_STACK_512            512
#define THREAD_STACK_1024           1024
#endif

//状态变量
// extern rt_err_t thread_status;               //线程创建状态获取
#endif
