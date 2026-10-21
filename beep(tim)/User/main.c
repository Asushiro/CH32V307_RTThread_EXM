/********************************** (C) COPYRIGHT *******************************
* File Name          : main.c
* Author             : WCH
* Version            : V1.0.0
* Date               : 2020/04/30
* Description        : Main program body.
*********************************************************************************
* Copyright (c) 2021 Nanjing Qinheng Microelectronics Co., Ltd.
* Attention: This software (modified or not) and binary are used for 
* microcontroller manufactured by Nanjing Qinheng Microelectronics.
*******************************************************************************/
#include "ch32v30x.h"
#include <rtthread.h>
#include <rthw.h>

int main(void)
{
    rt_kprintf("\r\n MCU: CH32V307\r\n");
    SystemCoreClockUpdate();
	rt_kprintf(" SysClk: %dHz\r\n",SystemCoreClock);
	rt_kprintf(" ChipID: %08x\r\n",DBGMCU_GetCHIPID());
    rt_kprintf(" www.wch.cn\r\n");

	while(1){
        rt_thread_mdelay(500);
    }

    return 0;
}





