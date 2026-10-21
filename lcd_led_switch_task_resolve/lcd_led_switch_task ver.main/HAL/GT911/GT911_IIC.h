#ifndef _GT911_IIC_H_
#define _GT911_IIC_H_

#include "debug.h"

/*
 * LCD_TOUCH_SCL   PB10
 * LCD_TOUCH_SDA   PB11
 * LCD_TOUCH_INT   PD2
 * LCD_TOUCH_RST   PE0
 *
 * */
// GPIO设置

#define GT911_SCL_OUT()  {GPIOB->CFGHR&=0xfffff0ff;GPIOB->CFGHR|=7<<8;}   //PB10 开漏输出
#define GT911_SDA_IN()   {GPIOB->CFGHR&=0xffff0fff;GPIOB->CFGHR|=4<<12;}  //PB11 浮空输入
#define GT911_SDA_OUT()  {GPIOB->CFGHR&=0xffff0fff;GPIOB->CFGHR|=7<<12;}  //PB11 开漏输出
#define GT911_RST_OUT()  {GPIOE->CFGLR&=0xfffffff0; GPIOE->CFGLR|= 3<<0;} //PE0  推挽输出
#define GT911_INT_OUT()  {GPIOD->CFGLR&=0xfffff0ff; GPIOD->CFGLR|= 3<<8;} //PD2  推挽输出
#define GT911_INT_IN()   {GPIOD->CFGLR&=0xfffff0ff; GPIOD->CFGLR|= 4<<8;} //PD2  浮空输入

#define GT911_SCL_SET()  GPIOB->BSHR = GPIO_Pin_10
#define GT911_SCL_CLR()  GPIOB->BCR = GPIO_Pin_10

#define GT911_SDA_SET()  GPIOB->BSHR = GPIO_Pin_11
#define GT911_SDA_CLR()  GPIOB->BCR = GPIO_Pin_11
#define GT911_SDA_READ() GPIOB->INDR & GPIO_Pin_11

#define GT911_RST_SET()  GPIOE->BSHR = GPIO_Pin_0
#define GT911_RST_CLR()  GPIOE->BCR = GPIO_Pin_0

#define GT911_INT_SET()  GPIOD->BSHR = GPIO_Pin_2
#define GT911_INT_CLR()  GPIOD->BCR = GPIO_Pin_2
#define GT911_INT_READ() GPIOD->INDR & GPIO_Pin_2



void GT911_iic_gpio_init(void);
void GT911_iic_start(void);
void GT911_iic_stop(void);
uint8_t GT911_iic_wait_ack(void);

void GT911_iic_send_byte(uint8_t data);
uint8_t GT911_iic_read_byte(uint8_t ack);

#endif /* end of GT911_IIC.h */

