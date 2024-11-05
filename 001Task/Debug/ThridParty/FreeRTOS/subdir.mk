################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThridParty/FreeRTOS/croutine.c \
../ThridParty/FreeRTOS/event_groups.c \
../ThridParty/FreeRTOS/list.c \
../ThridParty/FreeRTOS/queue.c \
../ThridParty/FreeRTOS/stream_buffer.c \
../ThridParty/FreeRTOS/tasks.c \
../ThridParty/FreeRTOS/timers.c 

OBJS += \
./ThridParty/FreeRTOS/croutine.o \
./ThridParty/FreeRTOS/event_groups.o \
./ThridParty/FreeRTOS/list.o \
./ThridParty/FreeRTOS/queue.o \
./ThridParty/FreeRTOS/stream_buffer.o \
./ThridParty/FreeRTOS/tasks.o \
./ThridParty/FreeRTOS/timers.o 

C_DEPS += \
./ThridParty/FreeRTOS/croutine.d \
./ThridParty/FreeRTOS/event_groups.d \
./ThridParty/FreeRTOS/list.d \
./ThridParty/FreeRTOS/queue.d \
./ThridParty/FreeRTOS/stream_buffer.d \
./ThridParty/FreeRTOS/tasks.d \
./ThridParty/FreeRTOS/timers.d 


# Each subdirectory must supply rules for building sources it contributes
ThridParty/FreeRTOS/%.o ThridParty/FreeRTOS/%.su: ../ThridParty/FreeRTOS/%.c ThridParty/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/SEGGER/Config" -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/SEGGER/OS" -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/SEGGER/SEGGER" -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/FreeRTOS/include" -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/FreeRTOS/portable" -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/FreeRTOS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThridParty-2f-FreeRTOS

clean-ThridParty-2f-FreeRTOS:
	-$(RM) ./ThridParty/FreeRTOS/croutine.d ./ThridParty/FreeRTOS/croutine.o ./ThridParty/FreeRTOS/croutine.su ./ThridParty/FreeRTOS/event_groups.d ./ThridParty/FreeRTOS/event_groups.o ./ThridParty/FreeRTOS/event_groups.su ./ThridParty/FreeRTOS/list.d ./ThridParty/FreeRTOS/list.o ./ThridParty/FreeRTOS/list.su ./ThridParty/FreeRTOS/queue.d ./ThridParty/FreeRTOS/queue.o ./ThridParty/FreeRTOS/queue.su ./ThridParty/FreeRTOS/stream_buffer.d ./ThridParty/FreeRTOS/stream_buffer.o ./ThridParty/FreeRTOS/stream_buffer.su ./ThridParty/FreeRTOS/tasks.d ./ThridParty/FreeRTOS/tasks.o ./ThridParty/FreeRTOS/tasks.su ./ThridParty/FreeRTOS/timers.d ./ThridParty/FreeRTOS/timers.o ./ThridParty/FreeRTOS/timers.su

.PHONY: clean-ThridParty-2f-FreeRTOS

