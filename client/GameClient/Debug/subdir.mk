################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../TcpClientTest.cpp \
../TcpConnectionTest.cpp \
../TcpServerTest.cpp \
../test.cpp 

OBJS += \
./TcpClientTest.o \
./TcpConnectionTest.o \
./TcpServerTest.o \
./test.o 

CPP_DEPS += \
./TcpClientTest.d \
./TcpConnectionTest.d \
./TcpServerTest.d \
./test.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"/home/workspace/client/GameBasic" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


