cmake_minimum_required(VERSION 3.8)
project(advancedProgramming1)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -lpthread")

add_subdirectory(src/client/lib/googletest-master)
include_directories(src/client/lib/googletest-master/googletest/include)
include_directories(src/client/lib/googletest-master/googlemock/include)
include_directories(src/client/test)

set(SOURCE_FILES
		src/client/include/Board.h
		src/client/src/Board.cpp
		src/client/src/GameLogic.cpp
		src/client/include/GameLogic.h
		src/client/include/Game.h
		src/client/src/Game.cpp
		src/client/src/Player.cpp
		src/client/include/Player.h
		src/client/src/HumanPlayer.cpp
		src/client/include/HumanPlayer.h
		src/client/src/AIPlayer.cpp
		src/client/include/AIPlayer.h
		src/client/src/Square.cpp
		src/client/include/Square.h)

set(TEST_FILES
		src/client/include/Board.h
		src/client/src/Board.cpp
		src/client/src/GameLogic.cpp
		src/client/include/GameLogic.h
		src/client/include/Game.h
		src/client/src/Game.cpp
		src/client/src/Player.cpp
		src/client/include/Player.h
		src/client/src/HumanPlayer.cpp
		src/client/include/HumanPlayer.h
		src/client/src/AIPlayer.cpp
		src/client/include/AIPlayer.h
		src/client/src/Square.cpp
		src/client/include/Square.h
		src/client/test/gtest_main.cpp
		src/client/test/test_board.cpp
		src/client/test/test_board.h
		src/client/test/test_aiPlayer.cpp
		src/client/test/test_aiPlayer.h
		src/client/test/test_gameLogic.cpp
		src/client/test/test_gameLogic.h src/server/Server.cpp src/server/Server.h src/server/main.cpp src/server/main.cpp)

add_executable(advancedProgramming1	${SOURCE_FILES} src/client/src/main.cpp)
add_executable(ex3_test	${TEST_FILES} ${SOURCE_FILES})

target_link_libraries(ex3_test gtest gtest_main gmock)