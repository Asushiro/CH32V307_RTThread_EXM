#include "rtthread.h"
#include "rtdevice.h"
#include "beep_thread.h"
//创建定时器控制块
static rt_timer_t tim = RT_NULL;
//全局变量
int cnt = 0;               //记录蜂鸣器响的次数
static int PIN_SET = 0;    //初始引脚电平，用于翻转比较 0->1时响一次
//超时函数
static void tim_timeout_entry(void *parameter){
    if (cnt < 6){  //只响三次,高低电平切换算一次
        rt_kprintf("NOW PIN_SET:%d\n",PIN_SET);
        PIN_SET = !PIN_SET;
        rt_pin_write(BEEP_PIN,PIN_SET);
        cnt ++;
    }else return;
}
//硬件初始化
void beep_init(void){
    rt_pin_mode(BEEP_PIN,PIN_MODE_OUTPUT);
    // rt_pin_write(BEEP_PIN,PIN_LOW);
}
//创建定时器
int beep_timer(void){
    //硬件初始化
    beep_init();
    tim = rt_timer_create("tim",
            tim_timeout_entry,
            RT_NULL,
            TIM_TIMEOUT_TIME,//每隔0.5s触发一次超时函数
            RT_TIMER_FLAG_SOFT_TIMER|RT_TIMER_CTRL_SET_PERIODIC);
            /*周期性软定时模式，软定时模式下允许在这个过程中执行延时操作*/
    if (tim != RT_NULL)
        rt_timer_start(tim);
    return 0;
}

MSH_CMD_EXPORT(beep_timer,start the beep_timer);