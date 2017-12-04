cmake_minimum_required(VERSION 3.8)
project(advancedProgramming1)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -lpthread")

add_subdirectory(lib/googletest-master)
include_directories(src lib/googletest-master/googletest/include)
include_directories(lib/googletest-master/googlemock/include)
include_directories(/test)

set(SOURCE_FILES
		include/Board.h
		src/Board.cpp
		src/GameLogic.cpp
		include/GameLogic.h
		include/Game.h
        src/Game.cpp
		src/Player.cpp
		include/Player.h
		src/HumanPlayer.cpp
		include/HumanPlayer.h
		src/AIPlayer.cpp
		include/AIPlayer.h
		src/Square.cpp
        include/Square.h)

set(TEST_FILES
		include/Board.h
		src/Board.cpp
		src/GameLogic.cpp
		include/GameLogic.h
		include/Game.h
		src/Game.cpp
		src/Player.cpp
		include/Player.h
		src/HumanPlayer.cpp
		include/HumanPlayer.h
		src/AIPlayer.cpp
		include/AIPlayer.h
		src/Square.cpp
		include/Square.h
		test/gtest_main.cpp
		test/test_board.cpp
		test/test_board.h
		test/test_aiPlayer.cpp
		test/test_aiPlayer.h
		test/test_gameLogic.cpp
		test/test_gameLogic.h)

add_executable(advancedProgramming1	${SOURCE_FILES} src/clinte/main.cpp)
add_executable(ex3_test	${TEST_FILES} ${SOURCE_FILES})

target_link_libraries(ex3_test gtest gtest_main gmock)