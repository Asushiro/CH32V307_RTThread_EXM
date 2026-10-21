################################################################################
# MRS Version: 2.4.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../SRC/rtthread/src/clock.c \
../SRC/rtthread/src/components.c \
../SRC/rtthread/src/cpu.c \
../SRC/rtthread/src/device.c \
../SRC/rtthread/src/idle.c \
../SRC/rtthread/src/ipc.c \
../SRC/rtthread/src/irq.c \
../SRC/rtthread/src/kservice.c \
../SRC/rtthread/src/mem.c \
../SRC/rtthread/src/memheap.c \
../SRC/rtthread/src/mempool.c \
../SRC/rtthread/src/object.c \
../SRC/rtthread/src/scheduler.c \
../SRC/rtthread/src/slab.c \
../SRC/rtthread/src/thread.c \
../SRC/rtthread/src/timer.c 

C_DEPS += \
./SRC/rtthread/src/clock.d \
./SRC/rtthread/src/components.d \
./SRC/rtthread/src/cpu.d \
./SRC/rtthread/src/device.d \
./SRC/rtthread/src/idle.d \
./SRC/rtthread/src/ipc.d \
./SRC/rtthread/src/irq.d \
./SRC/rtthread/src/kservice.d \
./SRC/rtthread/src/mem.d \
./SRC/rtthread/src/memheap.d \
./SRC/rtthread/src/mempool.d \
./SRC/rtthread/src/object.d \
./SRC/rtthread/src/scheduler.d \
./SRC/rtthread/src/slab.d \
./SRC/rtthread/src/thread.d \
./SRC/rtthread/src/timer.d 

OBJS += \
./SRC/rtthread/src/clock.o \
./SRC/rtthread/src/components.o \
./SRC/rtthread/src/cpu.o \
./SRC/rtthread/src/device.o \
./SRC/rtthread/src/idle.o \
./SRC/rtthread/src/ipc.o \
./SRC/rtthread/src/irq.o \
./SRC/rtthread/src/kservice.o \
./SRC/rtthread/src/mem.o \
./SRC/rtthread/src/memheap.o \
./SRC/rtthread/src/mempool.o \
./SRC/rtthread/src/object.o \
./SRC/rtthread/src/scheduler.o \
./SRC/rtthread/src/slab.o \
./SRC/rtthread/src/thread.o \
./SRC/rtthread/src/timer.o 

DIR_OBJS += \
./SRC/rtthread/src/*.o \

DIR_DEPS += \
./SRC/rtthread/src/*.d \

DIR_EXPANDS += \
./SRC/rtthread/src/*.234r.expand \


# Each subdirectory must supply rules for building sources it contributes
SRC/rtthread/src/%.o: ../SRC/rtthread/src/%.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task/SRC/Debug" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task/SRC/Core" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task/User" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task/SRC/Peripheral/inc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task/drivers" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task/rtthread/include" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task/rtthread/include/libc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task/rtthread/libcpu/risc-v" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task/rtthread/libcpu/risc-v/common" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task/rtthread/src" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task/rtthread" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task/rtthread/components/drivers/include" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task/rtthread/components/drivers/misc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task/rtthread/components/drivers/serial" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task/rtthread/components/finsh" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task/threads" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task/LVGL/GUI/lvgl/examples/porting" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task/LVGL/GUI/lvgl/src" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task/HAL/GT911" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task/HAL/LCD" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task/LVGL/GUI/lvgl" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task/LVGL/GUI_APP" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/lcd_led_switch_task/HAL/LED" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

