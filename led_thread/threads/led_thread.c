#include "led_thread.h"
#include "drivers/pin.h"
#include "ch32v30x_gpio.h"

//线程入口函数(主体)
static void blue_thread_entry(void *parameter){
    while(1){
        //也可以使用库函数来初始化
        rt_pin_write(90,PIN_LOW);
        //GPIO_ResetBits(GPIOB,GPIO_Pin_4);
        rt_thread_mdelay(500);
        rt_pin_write(90,PIN_HIGH);
        //GPIO_SetBits(GPIOB,GPIO_Pin_4);
        rt_thread_mdelay(500);
    }
}

//线程入口函数(主体)
static void red_thread_entry(void *parameter){
    while(1){
        rt_pin_write(77,PIN_LOW);
        rt_thread_mdelay(1000);
        rt_pin_write(77,PIN_HIGH);
        rt_thread_mdelay(1000);
    }
}

//硬件初始化函数 LED_BLUE->PB4.
void blue_gpio_init(void){
    rt_pin_mode(90,PIN_MODE_OUTPUT);
    rt_pin_write(90,PIN_LOW);//初始化熄灭

    //也可以使用库函数来初始化
    // RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB,ENABLE);
    // GPIO_InitTypeDef GPIO_InitStructure = {0};

    // GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    // GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    // GPIO_InitStructure.GPIO_Pin = GPIO_Pin_4;

    // GPIO_Init(GPIOB,&GPIO_InitStructure);
    // GPIO_ResetBits(GPIOB,GPIO_Pin_4);
}

void red_gpio_init(void){
    rt_pin_mode(77,PIN_MODE_OUTPUT);
    rt_pin_write(77,PIN_LOW);//初始化熄灭
}

//线程初始化
//红色灯静态线程
int red_thread(void){
    //硬件初始化
    red_gpio_init();

    //1.创建线程
    rt_thread_init(
        &thread2,
        "blue_thread",
        red_thread_entry,
        RT_NULL,
        &stack_size[0],//先开辟320字节的空间，然后直接取其首地址作为开始地址
        sizeof(stack_size),//可以直接获取大小
        red_thread_priority,
        red_thread_tick
    );
    rt_thread_startup(&thread2);
    return 0;
}  

//蓝色灯动态线程
int blue_thread(void){
    //硬件初始化
    blue_gpio_init();

    //1.检查线程是否已创建
    if (thread1 != RT_NULL)
        return RT_EBUSY;   // 线程已存在
    else{
    //2.创建线程
    thread1 = rt_thread_create(
                    "led_thread",           //名称
                    blue_thread_entry,       //入口函数指针
                    RT_NULL,                //额外传参（void *parameter），一般为0
                    blue_thread_stack_size,  //分配内存
                    blue_thread_priority,    //优先级
                    blue_thread_tick);       //时间片
    //3.启动线程
    if (thread1 != RT_NULL)
        rt_thread_startup(thread1);
    else
        rt_kprintf("STARTED FAILED");
    }
    return 0;
}

int start_all_thread(void){
    blue_thread();
    red_thread();
    return 0;
}
/*
针对线程创建相关命令到MSH：MSH_CMD_EXPORT(command, desc);
    @command：启动线程的函数名
    @desc：对于该命令的描述
*/
INIT_APP_EXPORT(start_all_thread);
MSH_CMD_EXPORT(start_all_thread,flash the blue led and red led);



