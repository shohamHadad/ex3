cmake_minimum_required(VERSION 3.8)
project(advancedProgramming1)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -lpthread")

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
		src/client/include/Square.h
		src/client/src/ClientPlayer.cpp
		src/client/include/ClientPlayer.h
		src/client/src/RemotePlayer.cpp
        src/client/include/RemotePlayer.h
        src/client/src/Client.cpp
        src/client/include/Client.h
		src/client/include/SettingData.h
		src/client/src/SettingData.cpp
		src/client/src/Command.cpp
		src/client/include/Command.h
		src/client/src/CommandManager.cpp
		src/client/include/CommandManager.h
		src/client/include/StartCommand.h
		src/client/src/StartCommand.cpp
		src/client/include/JoinCommand.h
		src/client/src/JoinCommand.cpp
		src/client/include/ListCommand.h src/client/src/ListCommand.cpp)

add_executable(advancedProgramming1	${SOURCE_FILES} src/client/src/main.cpp src/client/include/Command.h src/client/src/CommandManager.cpp src/client/include/CommandManager.h src/client/include/StartCommand.h src/client/src/StartCommand.cpp src/client/include/JoinCommand.h src/client/src/JoinCommand.cpp src/client/src/Command.cpp src/client/include/ListCommand.h src/client/src/ListCommand.cpp)
