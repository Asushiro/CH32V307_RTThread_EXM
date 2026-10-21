#include "rtthread.h"
#include "timer_thread.h"
#include "drv_gpio.h"
#include "drivers/pin.h"
rt_timer_t timer1 = RT_NULL;//定时器1
static struct rt_timer timer2;//定时器2
int cnt = 0;//定时器1的提示计数值，注意计时值必须为1ms的整数倍，计数值与其对应

//动态定时器1入口函数
static void timer1_thread_entry(void *parameter){
    rt_kprintf("time is counting at %d\n",cnt);
    if (cnt++ >= 9){   //计时10tick后停止
        rt_timer_stop(timer1);
        rt_kprintf("timer1 stopped");
    }
}

//静态定时器2入口函数
static void timer2_thread_entry(void *parameter){
        rt_pin_write(90,PIN_HIGH);
        rt_timer_stop(&timer2);
        rt_kprintf("LED_BLUE ON");
    }

//动态定时器1线程初始化
int timer1_thread(void){
    //1.检查是否存在同线程
    if (timer1 != RT_NULL)
        return RT_EBUSY;
    else{
    //2.创建一个动态定时器TIMER1
    timer1 = rt_timer_create(
        "timer1",
        timer1_thread_entry,
        RT_NULL,
        TIMER1_OUT_TIME,
        RT_TIMER_FLAG_PERIODIC);
    }
    //3.检查是否已创建线程
    if (timer1 != RT_NULL)
    //4.启动定时器
        rt_timer_start(timer1);

    return 0;
}

//静态定时器2线程初始化
int timer2_thread(void){
    //1.LED硬件初始化
    led_init();
    //2.创建一个静态定时器TIMER2
    rt_timer_init(
        &timer2,
        "timer2",
        timer2_thread_entry,
        RT_NULL,
        TIMER2_OUT_TIME,
        RT_TIMER_FLAG_ONE_SHOT  //一次性的计数，超时只执行回调函数1次
    );
    rt_timer_start(&timer2);

    return 0;
}

//启动所有线程
int start_all_thread(void){
    timer1_thread();
    timer2_thread();
    return 0;
}

//LED配置
void led_init(){
    rt_pin_mode(90,PIN_MODE_OUTPUT);//LED_BLUE->PB4
    rt_pin_write(90,PIN_LOW);
}


MSH_CMD_EXPORT(timer1_thread,start the timer1 thread);
MSH_CMD_EXPORT(timer2_thread,start the timer2 thread);
MSH_CMD_EXPORT(start_all_thread,start all the timer thread);