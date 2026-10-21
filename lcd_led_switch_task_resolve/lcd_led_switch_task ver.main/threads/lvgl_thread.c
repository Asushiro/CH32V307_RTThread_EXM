#include "ch32v30x.h"
#include "lcd.h"
#include "lvgl_thread.h"
#include "lv_port_disp_template.h"  //LVGL显示初始化
#include "lv_port_indev_template.h" //LVGL输入初始化
#include "thread_cfg.h"
#include "lvgl_thread.h"
#include "GT911.h"
LV_FONT_DECLARE(chinese_font_16)    //声明中文字体库
struct rt_thread lvgl_thread; 
rt_err_t thread_status;        //定义线程状态变量
__attribute__((aligned(4))) uint8_t lvgl_thread_stack[2048];  //增加栈大小到4096字节
/*  线程函数    */
void lvgl_thread_entry(void *parameter)
{
	// led_init();          //LED驱动初始化
    GT911_init();           //触摸模块初始化，需要放在最前面调用，因为内部调用了触摸屏复位函数
    LCD_Init();             //LCD初始化
    lv_init();              //LVGL库初始化
    lv_port_disp_init();    //LVGL显示初始化
    lv_port_indev_init();   //LVGL输入初始化

    /* 开关初始化 */
    lv_obj_t* switch_obj = lv_switch_create(lv_scr_act());
    lv_obj_set_size(switch_obj, 120, 60);                                       //设置大小
    lv_obj_align(switch_obj, LV_ALIGN_CENTER, 0, 0);   

    /* 标签初始化 */
    lv_obj_t* label_obj = lv_label_create(lv_scr_act());
    lv_obj_align(label_obj,LV_ALIGN_CENTER, 100, 60);
    lv_obj_set_style_text_font(label_obj, &chinese_font_16, 0);
    lv_label_set_text(label_obj,"Hello");  

    rt_thread_mdelay(50);
    while(1)
    {
        lv_tick_inc(1);
	    lv_timer_handler();
	    Delay_Ms(10);
    }
}

/* 创建线程 */
int tlvgl(void){
    thread_status = rt_thread_init(&lvgl_thread,
                                    "tlvgl",
                                    lvgl_thread_entry,
                                    NULL,
                                    lvgl_thread_stack,
                                    sizeof(lvgl_thread_stack),
                                    5,
                                    1000);
    if(thread_status != RT_ERROR){
        rt_thread_startup(&lvgl_thread);//启动线程
    }
    else rt_kprintf("failed");
    return 0;
}
INIT_APP_EXPORT(tlvgl);
// MSH_CMD_EXPORT(tlvgl,display lcd);