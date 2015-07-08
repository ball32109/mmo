################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../GameStart/GameSwitcher/GameSwitcher.cpp 

OBJS += \
./GameStart/GameSwitcher/GameSwitcher.o 

CPP_DEPS += \
./GameStart/GameSwitcher/GameSwitcher.d 


# Each subdirectory must supply rules for building sources it contributes
GameStart/GameSwitcher/%.o: ../GameStart/GameSwitcher/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"/home/workspace/server/GameBasic" -I"/home/workspace/server/GameServer" -I"/home/workspace/server/GameServer/GameGate" -I"/home/workspace/server/GameServer/GameGate/ClientTcp" -I"/home/workspace/server/GameServer/GameGate/SceneTcp" -I"/home/workspace/server/GameServer/GameStart" -I"/home/workspace/server/GameServer/GameStart/GameDeamon" -I"/home/workspace/server/GameServer/GameStart/GameSwitcher" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


