################################################################################
# MRS Version: 2.4.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../threads/semaphore.c 

C_DEPS += \
./threads/semaphore.d 

OBJS += \
./threads/semaphore.o 

DIR_OBJS += \
./threads/*.o \

DIR_DEPS += \
./threads/*.d \

DIR_EXPANDS += \
./threads/*.234r.expand \


# Each subdirectory must supply rules for building sources it contributes
threads/%.o: ../threads/%.c
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/SRC/Debug" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/semaphore/Core" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/semaphore/User" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/SRC/Peripheral/inc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/semaphore/drivers" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/semaphore/rtthread/include" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/semaphore/rtthread/include/libc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/semaphore/rtthread/libcpu/risc-v" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/semaphore/rtthread/libcpu/risc-v/common" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/semaphore/rtthread/src" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/semaphore/rtthread" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/semaphore/rtthread/components/drivers/include" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/semaphore/rtthread/components/drivers/misc" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/semaphore/rtthread/components/drivers/serial" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/semaphore/rtthread/components/finsh" -I"d:/嵌入式系统开发竞赛相关文档/ch32v307/任务练习/rt_thread_exm/semaphore/threads" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

