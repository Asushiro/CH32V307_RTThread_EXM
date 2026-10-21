/********************************** (C) COPYRIGHT *******************************
 * File Name          : led.c
 * Author             : WCH
 * Version            : V1.0
 * Date               : 2023/10/9
 * Description        :
 * Copyright (c) 2021 Nanjing Qinheng Microelectronics Co., Ltd.
 * SPDX-License-Identifier: Apache-2.0
 *******************************************************************************/

/******************************************************************************/
/* 头文件包含 */
#include "led.h"


/**************************************************************************************************
 *                                        GLOBAL VARIABLES
 **************************************************************************************************/
uint8_t led_level;       //当前LED的亮度,百分比


/**************************************************************************************************
 *                                        FUNCTIONS - Local
 **************************************************************************************************/
/* GPIO驱动LED初始化 */
void led_init(void)
{
    GPIO_InitTypeDef  GPIO_InitStructure = {0};

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);

    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_3 | GPIO_Pin_4 | GPIO_Pin_5; //PB3:红色   PB4:绿色   PB5:蓝色
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_OD;                //开漏输出
    GPIO_Init(GPIOB, &GPIO_InitStructure);

    GPIO_SetBits(GPIOB, GPIO_Pin_3|GPIO_Pin_4|GPIO_Pin_5);          //灯默认为关闭状态
}

/* 改变LED显示的颜色 */
void led_color_change(led_color_t color)
{
    switch(color)
    {
    case kBlack:    //黑色
        RED_OFF();
        GREEN_OFF();
        BLUE_OFF();
        break;

    case kWhite:    //白色
        RED_ON();
        GREEN_ON();
        BLUE_ON();
        break;

    case kRed:      //红色
        RED_ON();
        GREEN_OFF();
        BLUE_OFF();
        break;

    case kGreen:    //绿色
        RED_OFF();
        GREEN_ON();
        BLUE_OFF();
        break;

    case kBlue:     //蓝色
        RED_OFF();
        GREEN_OFF();
        BLUE_ON();
        break;

    case kYellow:   //黄色
        RED_ON();
        GREEN_ON();
        BLUE_OFF();
        break;

    case kMagenta:  //品红/红紫色
        RED_ON();
        GREEN_OFF();
        BLUE_ON();
        break;

    case kCyan:     //青色
        RED_OFF();
        GREEN_ON();
        BLUE_ON();
        break;

    default:
        break;
    }
}

/* PWM驱动LED初始化 */
void led_pwm_init(u16 arr, u16 psc, u16 ccp)
{
    GPIO_InitTypeDef  GPIO_InitStructure = {0};
    TIM_TimeBaseInitTypeDef TIM_TimeBaseInitStructure = {0};
    TIM_OCInitTypeDef TIM_OCInitStructure = {0};

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO | RCC_APB2Periph_GPIOB | RCC_APB2Periph_TIM10, ENABLE);

    GPIO_PinRemapConfig(GPIO_PartialRemap_TIM10, ENABLE);           //部分重映射
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_3 | GPIO_Pin_4 | GPIO_Pin_5; //PB3:红色   PB4:绿色   PB5:蓝色
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_OD;                //复用开漏输出,常规使用复用推挽输出
    GPIO_Init(GPIOB, &GPIO_InitStructure);

    TIM_TimeBaseInitStructure.TIM_Period = arr;                     //自动重装载值
    TIM_TimeBaseInitStructure.TIM_Prescaler = psc;                  //预分频系数, 计数器的时钟频率=TIMxCLK/(psc+1), TIMxCLK=APB1*2=96MHz
    TIM_TimeBaseInitStructure.TIM_ClockDivision = TIM_CKD_DIV1;     //输入捕获时滤波所用的采样时钟
    TIM_TimeBaseInitStructure.TIM_CounterMode = TIM_CounterMode_Up; //向上计数模式
    TIM_TimeBaseInit(TIM10, &TIM_TimeBaseInitStructure);            //定时器初始化

    TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1;               //向上计数时, TIMx_CNT < TIMx_CH1CVR 输出有效电平，否则输出无效电平
    TIM_OCInitStructure.TIM_Pulse = ccp;                            //设置待装入捕获比较寄存器的比较值 TIMx_CH1CVR
    TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;   //输出使能
    TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_Low;        //低电平有效
    TIM_OCInitStructure.TIM_OCIdleState = TIM_OCIdleState_Set;      //空闲状态时，OC2输出高电平
    TIM_OC1Init( TIM10, &TIM_OCInitStructure );                     //通道1初始化
    TIM_OC2Init( TIM10, &TIM_OCInitStructure );                     //通道2初始化
    TIM_OC3Init( TIM10, &TIM_OCInitStructure );                     //通道3初始化

    TIM_CtrlPWMOutputs(TIM10, ENABLE );                             //主输出使能，否则处于空闲状态
    TIM_OC1PreloadConfig( TIM10, TIM_OCPreload_Disable );           //比较捕获寄存器1预装载失能,写入比较捕获寄存器中的值会立即起作用
    TIM_OC2PreloadConfig( TIM10, TIM_OCPreload_Disable );           //比较捕获寄存器2预装载失能,写入比较捕获寄存器中的值会立即起作用
    TIM_OC3PreloadConfig( TIM10, TIM_OCPreload_Disable );           //比较捕获寄存器2预装载失能,写入比较捕获寄存器中的值会立即起作用
    TIM_ARRPreloadConfig( TIM10, ENABLE );                          //自动重装载使能
    TIM_Cmd( TIM10, ENABLE );                                       //计数器使能
}

/* LED的亮度控制 */
void led_pwm_control(led_num_t led_num, uint16_t period, uint8_t per)
{
    uint16_t duty_cycle;

    if(per > 100) //百分比大于100
    {
        per = 100;
    }
    duty_cycle = (period + 1) * per / 100;
//    printf(" per:%d | duty_cycle:%d\r\n",per, duty_cycle);

    switch(led_num)
    {
    case kALL_LED:
        TIM_SetCompare1(TIM10, duty_cycle); //设置定时10通道1的比较值，设置红灯的亮度
        TIM_SetCompare2(TIM10, duty_cycle); //设置定时10通道2的比较值，设置绿灯的亮度
        TIM_SetCompare3(TIM10, duty_cycle); //设置定时10通道3的比较值，设置蓝灯的亮度
        break;

    case kRED_LED:
        TIM_SetCompare1(TIM10, duty_cycle); //设置定时10通道1的比较值，设置红灯的亮度
        break;

    case kGREEN_LED:
        TIM_SetCompare2(TIM10, duty_cycle); //设置定时10通道2的比较值，设置绿灯的亮度
        break;

    case kBLUE_LED:
        TIM_SetCompare3(TIM10, duty_cycle); //设置定时10通道3的比较值，设置蓝灯的亮度
        break;

    default:
        break;
    }
}
