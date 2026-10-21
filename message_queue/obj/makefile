################################################################################
# MRS Version: 2.4.0
# Automatically-generated file. Do not edit!
################################################################################
-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include threads/subdir.mk
-include rtthread/src/subdir.mk
-include rtthread/libcpu/risc-v/common/subdir.mk
-include rtthread/components/finsh/subdir.mk
-include rtthread/components/drivers/serial/subdir.mk
-include rtthread/components/drivers/misc/subdir.mk
-include rtthread/subdir.mk
-include drivers/subdir.mk
-include User/subdir.mk
-include Startup/subdir.mk
-include Peripheral/src/subdir.mk
-include Debug/subdir.mk
-include Core/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
message_queue.hex \

SECONDARY_LIST += \
message_queue.lst \

SECONDARY_SIZE += \
message_queue.siz \


# All Target
all: 
	$(MAKE) --no-print-directory main-build 

main-build: message_queue.elf secondary-outputs

# Tool invocations
message_queue.elf: $(OBJS) $(USER_OBJS_ESCAPE)
	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -T "d:\嵌入式系统开发竞赛相关文档\ch32v307\任务练习\rt_thread_exm\message_queue\Ld\Link.ld" -nostartfiles -Xlinker --gc-sections -Wl,-Map,"message_queue.map" --specs=nano.specs --specs=nosys.specs -o "message_queue.elf" $(OBJS) $(LIBS) -lshlib
message_queue.hex: message_queue.elf
	@	riscv-none-embed-objcopy -O ihex "message_queue.elf" "message_queue.hex"
message_queue.lst: message_queue.elf
	@	riscv-none-embed-objdump --all-headers --demangle --disassemble -M xw "message_queue.elf" > "message_queue.lst"
message_queue.siz: message_queue.elf
	riscv-none-embed-size --format=berkeley "message_queue.elf"

# Other Targets
clean:
	-$(RM) $(DIR_OBJS) $(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE) message_queue.elf
	-$(RM) $(DIR_EXPANDS) $(CALLGRAPH_DOT)
	-$(RM) $(DIR_DEPS)
secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets