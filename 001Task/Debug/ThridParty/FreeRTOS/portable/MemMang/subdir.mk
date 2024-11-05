################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ThridParty/FreeRTOS/portable/MemMang/heap_4.c 

OBJS += \
./ThridParty/FreeRTOS/portable/MemMang/heap_4.o 

C_DEPS += \
./ThridParty/FreeRTOS/portable/MemMang/heap_4.d 


# Each subdirectory must supply rules for building sources it contributes
ThridParty/FreeRTOS/portable/MemMang/%.o ThridParty/FreeRTOS/portable/MemMang/%.su: ../ThridParty/FreeRTOS/portable/MemMang/%.c ThridParty/FreeRTOS/portable/MemMang/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/SEGGER/Config" -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/SEGGER/OS" -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/SEGGER/SEGGER" -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/FreeRTOS/include" -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/FreeRTOS/portable" -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Firmware/FreeRTOS_Workspace/001Task/ThridParty/FreeRTOS" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-ThridParty-2f-FreeRTOS-2f-portable-2f-MemMang

clean-ThridParty-2f-FreeRTOS-2f-portable-2f-MemMang:
	-$(RM) ./ThridParty/FreeRTOS/portable/MemMang/heap_4.d ./ThridParty/FreeRTOS/portable/MemMang/heap_4.o ./ThridParty/FreeRTOS/portable/MemMang/heap_4.su

.PHONY: clean-ThridParty-2f-FreeRTOS-2f-portable-2f-MemMang
