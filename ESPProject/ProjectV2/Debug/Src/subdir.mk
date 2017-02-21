################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/ESP8266.c \
../Src/FramewinDLG.c \
../Src/GUIConf.c \
../Src/GUI_X.c \
../Src/LCDConf.c \
../Src/main.c \
../Src/stm32f7xx_hal_msp.c \
../Src/stm32f7xx_it.c 

OBJS += \
./Src/ESP8266.o \
./Src/FramewinDLG.o \
./Src/GUIConf.o \
./Src/GUI_X.o \
./Src/LCDConf.o \
./Src/main.o \
./Src/stm32f7xx_hal_msp.o \
./Src/stm32f7xx_it.o 

C_DEPS += \
./Src/ESP8266.d \
./Src/FramewinDLG.d \
./Src/GUIConf.d \
./Src/GUI_X.d \
./Src/LCDConf.d \
./Src/main.d \
./Src/stm32f7xx_hal_msp.d \
./Src/stm32f7xx_it.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o: ../Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F746xx -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/ESPProject/ProjectV2/Inc" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/ESPProject/ProjectV2/Drivers/STM32F7xx_HAL_Driver/Inc" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/ESPProject/ProjectV2/Drivers/STM32F7xx_HAL_Driver/Inc/Legacy" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/ESPProject/ProjectV2/Drivers/CMSIS/Include" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/ESPProject/ProjectV2/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/ESPProject/ProjectV2/GUI" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/ESPProject/ProjectV2/GUI/inc" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/ESPProject/ProjectV2/GUI/lib" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/ESPProject/ProjectV2/Drivers/BSP" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/ESPProject/ProjectV2/Drivers/BSP/inc" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/ESPProject/ProjectV2/Drivers/BSP/src" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/ESPProject/ProjectV2/Drivers/BSP/Common" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/ESPProject/ProjectV2/Drivers/BSP/Components" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/ESPProject/ProjectV2/Drivers/BSP/Components/ft5336" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/ESPProject/ProjectV2/Drivers/BSP/Components/rk043fn48h" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/ESPProject/ProjectV2/Drivers/BSP/Utilities" -I"C:/Users/Ecto1/Documents/GitHub/-Embedded-systems-/ESPProject/ProjectV2/Drivers/BSP/Utilities/Fonts"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


