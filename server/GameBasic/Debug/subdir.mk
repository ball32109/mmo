################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../BaseTimer.cpp \
../BlockingQueue.cpp \
../Buffer.cpp \
../CommonList.cpp \
../CountDownLatch.cpp \
../InetAddr.cpp \
../LogClient.cpp \
../LogServer.cpp \
../TcpConnection.cpp \
../TcpMonitor.cpp \
../Thread.cpp \
../ThreadMonitor.cpp 

OBJS += \
./BaseTimer.o \
./BlockingQueue.o \
./Buffer.o \
./CommonList.o \
./CountDownLatch.o \
./InetAddr.o \
./LogClient.o \
./LogServer.o \
./TcpConnection.o \
./TcpMonitor.o \
./Thread.o \
./ThreadMonitor.o 

CPP_DEPS += \
./BaseTimer.d \
./BlockingQueue.d \
./Buffer.d \
./CommonList.d \
./CountDownLatch.d \
./InetAddr.d \
./LogClient.d \
./LogServer.d \
./TcpConnection.d \
./TcpMonitor.d \
./Thread.d \
./ThreadMonitor.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


