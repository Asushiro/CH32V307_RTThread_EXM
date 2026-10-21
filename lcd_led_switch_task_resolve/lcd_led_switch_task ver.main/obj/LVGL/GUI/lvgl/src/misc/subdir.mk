################################################################################
# MRS Version: 2.4.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LVGL/GUI/lvgl/src/misc/lv_anim.c \
../LVGL/GUI/lvgl/src/misc/lv_anim_timeline.c \
../LVGL/GUI/lvgl/src/misc/lv_area.c \
../LVGL/GUI/lvgl/src/misc/lv_async.c \
../LVGL/GUI/lvgl/src/misc/lv_bidi.c \
../LVGL/GUI/lvgl/src/misc/lv_color.c \
../LVGL/GUI/lvgl/src/misc/lv_fs.c \
../LVGL/GUI/lvgl/src/misc/lv_gc.c \
../LVGL/GUI/lvgl/src/misc/lv_ll.c \
../LVGL/GUI/lvgl/src/misc/lv_log.c \
../LVGL/GUI/lvgl/src/misc/lv_lru.c \
../LVGL/GUI/lvgl/src/misc/lv_math.c \
../LVGL/GUI/lvgl/src/misc/lv_mem.c \
../LVGL/GUI/lvgl/src/misc/lv_printf.c \
../LVGL/GUI/lvgl/src/misc/lv_style.c \
../LVGL/GUI/lvgl/src/misc/lv_style_gen.c \
../LVGL/GUI/lvgl/src/misc/lv_templ.c \
../LVGL/GUI/lvgl/src/misc/lv_timer.c \
../LVGL/GUI/lvgl/src/misc/lv_tlsf.c \
../LVGL/GUI/lvgl/src/misc/lv_txt.c \
../LVGL/GUI/lvgl/src/misc/lv_txt_ap.c \
../LVGL/GUI/lvgl/src/misc/lv_utils.c 

C_DEPS += \
./LVGL/GUI/lvgl/src/misc/lv_anim.d \
./LVGL/GUI/lvgl/src/misc/lv_anim_timeline.d \
./LVGL/GUI/lvgl/src/misc/lv_area.d \
./LVGL/GUI/lvgl/src/misc/lv_async.d \
./LVGL/GUI/lvgl/src/misc/lv_bidi.d \
./LVGL/GUI/lvgl/src/misc/lv_color.d \
./LVGL/GUI/lvgl/src/misc/lv_fs.d \
./LVGL/GUI/lvgl/src/misc/lv_gc.d \
./LVGL/GUI/lvgl/src/misc/lv_ll.d \
./LVGL/GUI/lvgl/src/misc/lv_log.d \
./LVGL/GUI/lvgl/src/misc/lv_lru.d \
./LVGL/GUI/lvgl/src/misc/lv_math.d \
./LVGL/GUI/lvgl/src/misc/lv_mem.d \
./LVGL/GUI/lvgl/src/misc/lv_printf.d \
./LVGL/GUI/lvgl/src/misc/lv_style.d \
./LVGL/GUI/lvgl/src/misc/lv_style_gen.d \
./LVGL/GUI/lvgl/src/misc/lv_templ.d \
./LVGL/GUI/lvgl/src/misc/lv_timer.d \
./LVGL/GUI/lvgl/src/misc/lv_tlsf.d \
./LVGL/GUI/lvgl/src/misc/lv_txt.d \
./LVGL/GUI/lvgl/src/misc/lv_txt_ap.d \
./LVGL/GUI/lvgl/src/misc/lv_utils.d 

OBJS += \
./LVGL/GUI/lvgl/src/misc/lv_anim.o \
./LVGL/GUI/lvgl/src/misc/lv_anim_timeline.o \
./LVGL/GUI/lvgl/src/misc/lv_area.o \
./LVGL/GUI/lvgl/src/misc/lv_async.o \
./LVGL/GUI/lvgl/src/misc/lv_bidi.o \
./LVGL/GUI/lvgl/src/misc/lv_color.o \
./LVGL/GUI/lvgl/src/misc/lv_fs.o \
./LVGL/GUI/lvgl/src/misc/lv_gc.o \
./LVGL/GUI/lvgl/src/misc/lv_ll.o \
./LVGL/GUI/lvgl/src/misc/lv_log.o \
./LVGL/GUI/lvgl/src/misc/lv_lru.o \
./LVGL/GUI/lvgl/src/misc/lv_math.o \
./LVGL/GUI/lvgl/src/misc/lv_mem.o \
./LVGL/GUI/lvgl/src/misc/lv_printf.o \
./LVGL/GUI/lvgl/src/misc/lv_style.o \
./LVGL/GUI/lvgl/src/misc/lv_style_gen.o \
./LVGL/GUI/lvgl/src/misc/lv_templ.o \
./LVGL/GUI/lvgl/src/misc/lv_timer.o \
./LVGL/GUI/lvgl/src/misc/lv_tlsf.o \
./LVGL/GUI/lvgl/src/misc/lv_txt.o \
./LVGL/GUI/lvgl/src/misc/lv_txt_ap.o \
./LVGL/GUI/lvgl/src/misc/lv_utils.o 

DIR_OBJS += \
./LVGL/GUI/lvgl/src/misc/*.o \

DIR_DEPS += \
./LVGL/GUI/lvgl/src/misc/*.d \

DIR_EXPANDS += \
./LVGL/GUI/lvgl/src/misc/*.234r.expand \


# Each subdirectory must supply rules for building sources it contributes
LVGL/GUI/lvgl/src/misc/%.o: ../LVGL/GUI/lvgl/src/misc/%.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/SRC/Debug" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/SRC/Core" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/User" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/SRC/Peripheral/inc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/drivers" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/include" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/include/libc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/libcpu/risc-v" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/libcpu/risc-v/common" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/src" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/drivers/include" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/drivers/misc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/drivers/serial" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/rtthread/components/finsh" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/threads" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI/lvgl/examples/porting" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI/lvgl/src" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/HAL/GT911" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/HAL/LCD" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI/lvgl" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/LVGL/GUI_APP" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task_resolve/lcd_led_switch_task/HAL/LED" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

