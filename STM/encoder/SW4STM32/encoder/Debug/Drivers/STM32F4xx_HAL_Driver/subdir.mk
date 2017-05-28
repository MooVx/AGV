################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal.c \
D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_adc.c \
D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_adc_ex.c \
D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cortex.c \
D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma.c \
D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma_ex.c \
D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash.c \
D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ex.c \
D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ramfunc.c \
D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_gpio.c \
D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr.c \
D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr_ex.c \
D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc.c \
D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc_ex.c \
D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim.c \
D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim_ex.c \
D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_uart.c 

OBJS += \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_adc.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_adc_ex.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_cortex.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_dma.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_dma_ex.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash_ex.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash_ramfunc.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_gpio.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_pwr.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_pwr_ex.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc_ex.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_tim.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_tim_ex.o \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_uart.o 

C_DEPS += \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_adc.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_adc_ex.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_cortex.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_dma.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_dma_ex.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash_ex.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash_ramfunc.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_gpio.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_pwr.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_pwr_ex.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc_ex.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_tim.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_tim_ex.d \
./Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_uart.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal.o: D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F411xE -I"D:/AGV/STM/encoder/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Include" -I"D:/AGV/STM/encoder/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_adc.o: D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_adc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F411xE -I"D:/AGV/STM/encoder/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Include" -I"D:/AGV/STM/encoder/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_adc_ex.o: D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_adc_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F411xE -I"D:/AGV/STM/encoder/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Include" -I"D:/AGV/STM/encoder/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_cortex.o: D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cortex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F411xE -I"D:/AGV/STM/encoder/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Include" -I"D:/AGV/STM/encoder/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_dma.o: D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F411xE -I"D:/AGV/STM/encoder/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Include" -I"D:/AGV/STM/encoder/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_dma_ex.o: D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F411xE -I"D:/AGV/STM/encoder/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Include" -I"D:/AGV/STM/encoder/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash.o: D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F411xE -I"D:/AGV/STM/encoder/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Include" -I"D:/AGV/STM/encoder/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash_ex.o: D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F411xE -I"D:/AGV/STM/encoder/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Include" -I"D:/AGV/STM/encoder/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash_ramfunc.o: D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ramfunc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F411xE -I"D:/AGV/STM/encoder/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Include" -I"D:/AGV/STM/encoder/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_gpio.o: D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F411xE -I"D:/AGV/STM/encoder/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Include" -I"D:/AGV/STM/encoder/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_pwr.o: D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F411xE -I"D:/AGV/STM/encoder/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Include" -I"D:/AGV/STM/encoder/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_pwr_ex.o: D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F411xE -I"D:/AGV/STM/encoder/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Include" -I"D:/AGV/STM/encoder/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc.o: D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F411xE -I"D:/AGV/STM/encoder/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Include" -I"D:/AGV/STM/encoder/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc_ex.o: D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F411xE -I"D:/AGV/STM/encoder/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Include" -I"D:/AGV/STM/encoder/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_tim.o: D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F411xE -I"D:/AGV/STM/encoder/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Include" -I"D:/AGV/STM/encoder/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_tim_ex.o: D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim_ex.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F411xE -I"D:/AGV/STM/encoder/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Include" -I"D:/AGV/STM/encoder/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Drivers/STM32F4xx_HAL_Driver/stm32f4xx_hal_uart.o: D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_uart.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -D__weak=__attribute__((weak)) -D__packed=__attribute__((__packed__)) -DUSE_HAL_DRIVER -DSTM32F411xE -I"D:/AGV/STM/encoder/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc" -I"D:/AGV/STM/encoder/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"D:/AGV/STM/encoder/Drivers/CMSIS/Include" -I"D:/AGV/STM/encoder/Inc"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


