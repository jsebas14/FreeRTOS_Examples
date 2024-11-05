################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/croutine.c \
C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/event_groups.c \
C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/list.c \
C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/queue.c \
C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/stream_buffer.c \
C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/tasks.c \
C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/timers.c 

OBJS += \
./common/ThridParty/FreeRTOS/croutine.o \
./common/ThridParty/FreeRTOS/event_groups.o \
./common/ThridParty/FreeRTOS/list.o \
./common/ThridParty/FreeRTOS/queue.o \
./common/ThridParty/FreeRTOS/stream_buffer.o \
./common/ThridParty/FreeRTOS/tasks.o \
./common/ThridParty/FreeRTOS/timers.o 

C_DEPS += \
./common/ThridParty/FreeRTOS/croutine.d \
./common/ThridParty/FreeRTOS/event_groups.d \
./common/ThridParty/FreeRTOS/list.d \
./common/ThridParty/FreeRTOS/queue.d \
./common/ThridParty/FreeRTOS/stream_buffer.d \
./common/ThridParty/FreeRTOS/tasks.d \
./common/ThridParty/FreeRTOS/timers.d 


# Each subdirectory must supply rules for building sources it contributes
common/ThridParty/FreeRTOS/croutine.o: C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/croutine.c common/ThridParty/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/include" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/Config" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/OS" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
common/ThridParty/FreeRTOS/event_groups.o: C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/event_groups.c common/ThridParty/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/include" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/Config" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/OS" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
common/ThridParty/FreeRTOS/list.o: C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/list.c common/ThridParty/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/include" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/Config" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/OS" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
common/ThridParty/FreeRTOS/queue.o: C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/queue.c common/ThridParty/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/include" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/Config" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/OS" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
common/ThridParty/FreeRTOS/stream_buffer.o: C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/stream_buffer.c common/ThridParty/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/include" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/Config" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/OS" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
common/ThridParty/FreeRTOS/tasks.o: C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/tasks.c common/ThridParty/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/include" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/Config" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/OS" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
common/ThridParty/FreeRTOS/timers.o: C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/timers.c common/ThridParty/FreeRTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/include" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/Config" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/OS" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-common-2f-ThridParty-2f-FreeRTOS

clean-common-2f-ThridParty-2f-FreeRTOS:
	-$(RM) ./common/ThridParty/FreeRTOS/croutine.d ./common/ThridParty/FreeRTOS/croutine.o ./common/ThridParty/FreeRTOS/croutine.su ./common/ThridParty/FreeRTOS/event_groups.d ./common/ThridParty/FreeRTOS/event_groups.o ./common/ThridParty/FreeRTOS/event_groups.su ./common/ThridParty/FreeRTOS/list.d ./common/ThridParty/FreeRTOS/list.o ./common/ThridParty/FreeRTOS/list.su ./common/ThridParty/FreeRTOS/queue.d ./common/ThridParty/FreeRTOS/queue.o ./common/ThridParty/FreeRTOS/queue.su ./common/ThridParty/FreeRTOS/stream_buffer.d ./common/ThridParty/FreeRTOS/stream_buffer.o ./common/ThridParty/FreeRTOS/stream_buffer.su ./common/ThridParty/FreeRTOS/tasks.d ./common/ThridParty/FreeRTOS/tasks.o ./common/ThridParty/FreeRTOS/tasks.su ./common/ThridParty/FreeRTOS/timers.d ./common/ThridParty/FreeRTOS/timers.o ./common/ThridParty/FreeRTOS/timers.su

.PHONY: clean-common-2f-ThridParty-2f-FreeRTOS

