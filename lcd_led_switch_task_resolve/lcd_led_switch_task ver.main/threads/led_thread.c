#include "thread_cfg.h"
//ȫ�ֱ���
static int PIN_SET = 0;
//��ں���
static void led_state_entry(void *parameter){
    while (1){
        rt_pin_write(90|77,PIN_SET?(PIN_SET == 0):(PIN_SET == 1));
    }
}
/* ���ز����¼��ص����� */
void switch_event_cb(lv_event_t * e)
{
    lv_event_code_t code = lv_event_get_code(e);

    if(code == LV_EVENT_CLICKED)
    {
        if(rt_pin_read(90|77) == 0)
        {
            led_color_change(kBlack);
        }
        else
        {
            led_color_change(kWhite);
        }
    }
}
//�����߳�
int led_thread(void){
    //�����߳̿��ƿ�
    static rt_thread_t led_state_thread = RT_NULL;
    led_state_thread = rt_thread_create("led_t",
                        led_state_entry,
                        (void *)PIN_SET,
                        THREAD_STACK_128,
                        THREAD_PRIORITY_15,
                        THREAD_TIMESLICE_5);
    
    return 0;
}