################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/portable/MemMang/heap_4.c 

OBJS += \
./common/ThridParty/FreeRTOS/portable/MemMang/heap_4.o 

C_DEPS += \
./common/ThridParty/FreeRTOS/portable/MemMang/heap_4.d 


# Each subdirectory must supply rules for building sources it contributes
common/ThridParty/FreeRTOS/portable/MemMang/heap_4.o: C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/portable/MemMang/heap_4.c common/ThridParty/FreeRTOS/portable/MemMang/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/include" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/FreeRTOS/portable/GCC/ARM_CM4F" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/Config" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/OS" -I"C:/Firmware/FreeRTOS_Workspace/common/ThridParty/SEGGER/SEGGER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-common-2f-ThridParty-2f-FreeRTOS-2f-portable-2f-MemMang

clean-common-2f-ThridParty-2f-FreeRTOS-2f-portable-2f-MemMang:
	-$(RM) ./common/ThridParty/FreeRTOS/portable/MemMang/heap_4.d ./common/ThridParty/FreeRTOS/portable/MemMang/heap_4.o ./common/ThridParty/FreeRTOS/portable/MemMang/heap_4.su

.PHONY: clean-common-2f-ThridParty-2f-FreeRTOS-2f-portable-2f-MemMang
