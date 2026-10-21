################################################################################
# MRS Version: 2.4.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rtthread/thread_lists/led_thread.c 

C_DEPS += \
./rtthread/thread_lists/led_thread.d 

OBJS += \
./rtthread/thread_lists/led_thread.o 

DIR_OBJS += \
./rtthread/thread_lists/*.o \

DIR_DEPS += \
./rtthread/thread_lists/*.d \

DIR_EXPANDS += \
./rtthread/thread_lists/*.234r.expand \


# Each subdirectory must supply rules for building sources it contributes
rtthread/thread_lists/%.o: ../rtthread/thread_lists/%.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"d:/嵌入式系统开发竞赛相关文档/任务练习/SRC/Debug" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/Core" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/User" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/SRC/Peripheral/inc" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/drivers" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/rtthread/include" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/rtthread/include/libc" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/rtthread/libcpu/risc-v" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/rtthread/libcpu/risc-v/common" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/rtthread/src" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/rtthread" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/rtthread/components/drivers/include" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/rtthread/components/drivers/misc" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/rtthread/components/drivers/serial" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/rtthread/components/finsh" -I"d:/嵌入式系统开发竞赛相关文档/任务练习/rt-thread/rtthread/thread_lists" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

