################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../test/gtest_main.cpp \
../test/test_aiPlayer.cpp \
../test/test_board.cpp \
../test/test_gameLogic.cpp 

OBJS += \
./test/gtest_main.o \
./test/test_aiPlayer.o \
./test/test_board.o \
./test/test_gameLogic.o 

CPP_DEPS += \
./test/gtest_main.d \
./test/test_aiPlayer.d \
./test/test_board.d \
./test/test_gameLogic.d 


# Each subdirectory must supply rules for building sources it contributes
test/%.o: ../test/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"/home/shir/workspace/Reversi/gtest_src" -I"/home/shir/workspace/Reversi/include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


