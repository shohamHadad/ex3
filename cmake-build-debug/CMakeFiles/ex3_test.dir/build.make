# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/shoham/clion-2017.2.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/shoham/clion-2017.2.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/shoham/CLionProjects/ex3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/shoham/CLionProjects/ex3/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/ex3_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ex3_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ex3_test.dir/flags.make

CMakeFiles/ex3_test.dir/src/client/src/Board.cpp.o: CMakeFiles/ex3_test.dir/flags.make
CMakeFiles/ex3_test.dir/src/client/src/Board.cpp.o: ../src/client/src/Board.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shoham/CLionProjects/ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ex3_test.dir/src/client/src/Board.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ex3_test.dir/src/client/src/Board.cpp.o -c /home/shoham/CLionProjects/ex3/src/client/src/Board.cpp

CMakeFiles/ex3_test.dir/src/client/src/Board.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex3_test.dir/src/client/src/Board.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shoham/CLionProjects/ex3/src/client/src/Board.cpp > CMakeFiles/ex3_test.dir/src/client/src/Board.cpp.i

CMakeFiles/ex3_test.dir/src/client/src/Board.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex3_test.dir/src/client/src/Board.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shoham/CLionProjects/ex3/src/client/src/Board.cpp -o CMakeFiles/ex3_test.dir/src/client/src/Board.cpp.s

CMakeFiles/ex3_test.dir/src/client/src/Board.cpp.o.requires:

.PHONY : CMakeFiles/ex3_test.dir/src/client/src/Board.cpp.o.requires

CMakeFiles/ex3_test.dir/src/client/src/Board.cpp.o.provides: CMakeFiles/ex3_test.dir/src/client/src/Board.cpp.o.requires
	$(MAKE) -f CMakeFiles/ex3_test.dir/build.make CMakeFiles/ex3_test.dir/src/client/src/Board.cpp.o.provides.build
.PHONY : CMakeFiles/ex3_test.dir/src/client/src/Board.cpp.o.provides

CMakeFiles/ex3_test.dir/src/client/src/Board.cpp.o.provides.build: CMakeFiles/ex3_test.dir/src/client/src/Board.cpp.o


CMakeFiles/ex3_test.dir/src/client/src/GameLogic.cpp.o: CMakeFiles/ex3_test.dir/flags.make
CMakeFiles/ex3_test.dir/src/client/src/GameLogic.cpp.o: ../src/client/src/GameLogic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shoham/CLionProjects/ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ex3_test.dir/src/client/src/GameLogic.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ex3_test.dir/src/client/src/GameLogic.cpp.o -c /home/shoham/CLionProjects/ex3/src/client/src/GameLogic.cpp

CMakeFiles/ex3_test.dir/src/client/src/GameLogic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex3_test.dir/src/client/src/GameLogic.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shoham/CLionProjects/ex3/src/client/src/GameLogic.cpp > CMakeFiles/ex3_test.dir/src/client/src/GameLogic.cpp.i

CMakeFiles/ex3_test.dir/src/client/src/GameLogic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex3_test.dir/src/client/src/GameLogic.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shoham/CLionProjects/ex3/src/client/src/GameLogic.cpp -o CMakeFiles/ex3_test.dir/src/client/src/GameLogic.cpp.s

CMakeFiles/ex3_test.dir/src/client/src/GameLogic.cpp.o.requires:

.PHONY : CMakeFiles/ex3_test.dir/src/client/src/GameLogic.cpp.o.requires

CMakeFiles/ex3_test.dir/src/client/src/GameLogic.cpp.o.provides: CMakeFiles/ex3_test.dir/src/client/src/GameLogic.cpp.o.requires
	$(MAKE) -f CMakeFiles/ex3_test.dir/build.make CMakeFiles/ex3_test.dir/src/client/src/GameLogic.cpp.o.provides.build
.PHONY : CMakeFiles/ex3_test.dir/src/client/src/GameLogic.cpp.o.provides

CMakeFiles/ex3_test.dir/src/client/src/GameLogic.cpp.o.provides.build: CMakeFiles/ex3_test.dir/src/client/src/GameLogic.cpp.o


CMakeFiles/ex3_test.dir/src/client/src/Game.cpp.o: CMakeFiles/ex3_test.dir/flags.make
CMakeFiles/ex3_test.dir/src/client/src/Game.cpp.o: ../src/client/src/Game.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shoham/CLionProjects/ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ex3_test.dir/src/client/src/Game.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ex3_test.dir/src/client/src/Game.cpp.o -c /home/shoham/CLionProjects/ex3/src/client/src/Game.cpp

CMakeFiles/ex3_test.dir/src/client/src/Game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex3_test.dir/src/client/src/Game.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shoham/CLionProjects/ex3/src/client/src/Game.cpp > CMakeFiles/ex3_test.dir/src/client/src/Game.cpp.i

CMakeFiles/ex3_test.dir/src/client/src/Game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex3_test.dir/src/client/src/Game.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shoham/CLionProjects/ex3/src/client/src/Game.cpp -o CMakeFiles/ex3_test.dir/src/client/src/Game.cpp.s

CMakeFiles/ex3_test.dir/src/client/src/Game.cpp.o.requires:

.PHONY : CMakeFiles/ex3_test.dir/src/client/src/Game.cpp.o.requires

CMakeFiles/ex3_test.dir/src/client/src/Game.cpp.o.provides: CMakeFiles/ex3_test.dir/src/client/src/Game.cpp.o.requires
	$(MAKE) -f CMakeFiles/ex3_test.dir/build.make CMakeFiles/ex3_test.dir/src/client/src/Game.cpp.o.provides.build
.PHONY : CMakeFiles/ex3_test.dir/src/client/src/Game.cpp.o.provides

CMakeFiles/ex3_test.dir/src/client/src/Game.cpp.o.provides.build: CMakeFiles/ex3_test.dir/src/client/src/Game.cpp.o


CMakeFiles/ex3_test.dir/src/client/src/Player.cpp.o: CMakeFiles/ex3_test.dir/flags.make
CMakeFiles/ex3_test.dir/src/client/src/Player.cpp.o: ../src/client/src/Player.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shoham/CLionProjects/ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ex3_test.dir/src/client/src/Player.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ex3_test.dir/src/client/src/Player.cpp.o -c /home/shoham/CLionProjects/ex3/src/client/src/Player.cpp

CMakeFiles/ex3_test.dir/src/client/src/Player.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex3_test.dir/src/client/src/Player.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shoham/CLionProjects/ex3/src/client/src/Player.cpp > CMakeFiles/ex3_test.dir/src/client/src/Player.cpp.i

CMakeFiles/ex3_test.dir/src/client/src/Player.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex3_test.dir/src/client/src/Player.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shoham/CLionProjects/ex3/src/client/src/Player.cpp -o CMakeFiles/ex3_test.dir/src/client/src/Player.cpp.s

CMakeFiles/ex3_test.dir/src/client/src/Player.cpp.o.requires:

.PHONY : CMakeFiles/ex3_test.dir/src/client/src/Player.cpp.o.requires

CMakeFiles/ex3_test.dir/src/client/src/Player.cpp.o.provides: CMakeFiles/ex3_test.dir/src/client/src/Player.cpp.o.requires
	$(MAKE) -f CMakeFiles/ex3_test.dir/build.make CMakeFiles/ex3_test.dir/src/client/src/Player.cpp.o.provides.build
.PHONY : CMakeFiles/ex3_test.dir/src/client/src/Player.cpp.o.provides

CMakeFiles/ex3_test.dir/src/client/src/Player.cpp.o.provides.build: CMakeFiles/ex3_test.dir/src/client/src/Player.cpp.o


CMakeFiles/ex3_test.dir/src/client/src/HumanPlayer.cpp.o: CMakeFiles/ex3_test.dir/flags.make
CMakeFiles/ex3_test.dir/src/client/src/HumanPlayer.cpp.o: ../src/client/src/HumanPlayer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shoham/CLionProjects/ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ex3_test.dir/src/client/src/HumanPlayer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ex3_test.dir/src/client/src/HumanPlayer.cpp.o -c /home/shoham/CLionProjects/ex3/src/client/src/HumanPlayer.cpp

CMakeFiles/ex3_test.dir/src/client/src/HumanPlayer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex3_test.dir/src/client/src/HumanPlayer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shoham/CLionProjects/ex3/src/client/src/HumanPlayer.cpp > CMakeFiles/ex3_test.dir/src/client/src/HumanPlayer.cpp.i

CMakeFiles/ex3_test.dir/src/client/src/HumanPlayer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex3_test.dir/src/client/src/HumanPlayer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shoham/CLionProjects/ex3/src/client/src/HumanPlayer.cpp -o CMakeFiles/ex3_test.dir/src/client/src/HumanPlayer.cpp.s

CMakeFiles/ex3_test.dir/src/client/src/HumanPlayer.cpp.o.requires:

.PHONY : CMakeFiles/ex3_test.dir/src/client/src/HumanPlayer.cpp.o.requires

CMakeFiles/ex3_test.dir/src/client/src/HumanPlayer.cpp.o.provides: CMakeFiles/ex3_test.dir/src/client/src/HumanPlayer.cpp.o.requires
	$(MAKE) -f CMakeFiles/ex3_test.dir/build.make CMakeFiles/ex3_test.dir/src/client/src/HumanPlayer.cpp.o.provides.build
.PHONY : CMakeFiles/ex3_test.dir/src/client/src/HumanPlayer.cpp.o.provides

CMakeFiles/ex3_test.dir/src/client/src/HumanPlayer.cpp.o.provides.build: CMakeFiles/ex3_test.dir/src/client/src/HumanPlayer.cpp.o


CMakeFiles/ex3_test.dir/src/client/src/AIPlayer.cpp.o: CMakeFiles/ex3_test.dir/flags.make
CMakeFiles/ex3_test.dir/src/client/src/AIPlayer.cpp.o: ../src/client/src/AIPlayer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shoham/CLionProjects/ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/ex3_test.dir/src/client/src/AIPlayer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ex3_test.dir/src/client/src/AIPlayer.cpp.o -c /home/shoham/CLionProjects/ex3/src/client/src/AIPlayer.cpp

CMakeFiles/ex3_test.dir/src/client/src/AIPlayer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex3_test.dir/src/client/src/AIPlayer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shoham/CLionProjects/ex3/src/client/src/AIPlayer.cpp > CMakeFiles/ex3_test.dir/src/client/src/AIPlayer.cpp.i

CMakeFiles/ex3_test.dir/src/client/src/AIPlayer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex3_test.dir/src/client/src/AIPlayer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shoham/CLionProjects/ex3/src/client/src/AIPlayer.cpp -o CMakeFiles/ex3_test.dir/src/client/src/AIPlayer.cpp.s

CMakeFiles/ex3_test.dir/src/client/src/AIPlayer.cpp.o.requires:

.PHONY : CMakeFiles/ex3_test.dir/src/client/src/AIPlayer.cpp.o.requires

CMakeFiles/ex3_test.dir/src/client/src/AIPlayer.cpp.o.provides: CMakeFiles/ex3_test.dir/src/client/src/AIPlayer.cpp.o.requires
	$(MAKE) -f CMakeFiles/ex3_test.dir/build.make CMakeFiles/ex3_test.dir/src/client/src/AIPlayer.cpp.o.provides.build
.PHONY : CMakeFiles/ex3_test.dir/src/client/src/AIPlayer.cpp.o.provides

CMakeFiles/ex3_test.dir/src/client/src/AIPlayer.cpp.o.provides.build: CMakeFiles/ex3_test.dir/src/client/src/AIPlayer.cpp.o


CMakeFiles/ex3_test.dir/src/client/src/Square.cpp.o: CMakeFiles/ex3_test.dir/flags.make
CMakeFiles/ex3_test.dir/src/client/src/Square.cpp.o: ../src/client/src/Square.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shoham/CLionProjects/ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/ex3_test.dir/src/client/src/Square.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ex3_test.dir/src/client/src/Square.cpp.o -c /home/shoham/CLionProjects/ex3/src/client/src/Square.cpp

CMakeFiles/ex3_test.dir/src/client/src/Square.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex3_test.dir/src/client/src/Square.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shoham/CLionProjects/ex3/src/client/src/Square.cpp > CMakeFiles/ex3_test.dir/src/client/src/Square.cpp.i

CMakeFiles/ex3_test.dir/src/client/src/Square.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex3_test.dir/src/client/src/Square.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shoham/CLionProjects/ex3/src/client/src/Square.cpp -o CMakeFiles/ex3_test.dir/src/client/src/Square.cpp.s

CMakeFiles/ex3_test.dir/src/client/src/Square.cpp.o.requires:

.PHONY : CMakeFiles/ex3_test.dir/src/client/src/Square.cpp.o.requires

CMakeFiles/ex3_test.dir/src/client/src/Square.cpp.o.provides: CMakeFiles/ex3_test.dir/src/client/src/Square.cpp.o.requires
	$(MAKE) -f CMakeFiles/ex3_test.dir/build.make CMakeFiles/ex3_test.dir/src/client/src/Square.cpp.o.provides.build
.PHONY : CMakeFiles/ex3_test.dir/src/client/src/Square.cpp.o.provides

CMakeFiles/ex3_test.dir/src/client/src/Square.cpp.o.provides.build: CMakeFiles/ex3_test.dir/src/client/src/Square.cpp.o


CMakeFiles/ex3_test.dir/src/client/test/gtest_main.cpp.o: CMakeFiles/ex3_test.dir/flags.make
CMakeFiles/ex3_test.dir/src/client/test/gtest_main.cpp.o: ../src/client/test/gtest_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shoham/CLionProjects/ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/ex3_test.dir/src/client/test/gtest_main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ex3_test.dir/src/client/test/gtest_main.cpp.o -c /home/shoham/CLionProjects/ex3/src/client/test/gtest_main.cpp

CMakeFiles/ex3_test.dir/src/client/test/gtest_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex3_test.dir/src/client/test/gtest_main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shoham/CLionProjects/ex3/src/client/test/gtest_main.cpp > CMakeFiles/ex3_test.dir/src/client/test/gtest_main.cpp.i

CMakeFiles/ex3_test.dir/src/client/test/gtest_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex3_test.dir/src/client/test/gtest_main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shoham/CLionProjects/ex3/src/client/test/gtest_main.cpp -o CMakeFiles/ex3_test.dir/src/client/test/gtest_main.cpp.s

CMakeFiles/ex3_test.dir/src/client/test/gtest_main.cpp.o.requires:

.PHONY : CMakeFiles/ex3_test.dir/src/client/test/gtest_main.cpp.o.requires

CMakeFiles/ex3_test.dir/src/client/test/gtest_main.cpp.o.provides: CMakeFiles/ex3_test.dir/src/client/test/gtest_main.cpp.o.requires
	$(MAKE) -f CMakeFiles/ex3_test.dir/build.make CMakeFiles/ex3_test.dir/src/client/test/gtest_main.cpp.o.provides.build
.PHONY : CMakeFiles/ex3_test.dir/src/client/test/gtest_main.cpp.o.provides

CMakeFiles/ex3_test.dir/src/client/test/gtest_main.cpp.o.provides.build: CMakeFiles/ex3_test.dir/src/client/test/gtest_main.cpp.o


CMakeFiles/ex3_test.dir/src/client/test/test_board.cpp.o: CMakeFiles/ex3_test.dir/flags.make
CMakeFiles/ex3_test.dir/src/client/test/test_board.cpp.o: ../src/client/test/test_board.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shoham/CLionProjects/ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/ex3_test.dir/src/client/test/test_board.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ex3_test.dir/src/client/test/test_board.cpp.o -c /home/shoham/CLionProjects/ex3/src/client/test/test_board.cpp

CMakeFiles/ex3_test.dir/src/client/test/test_board.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex3_test.dir/src/client/test/test_board.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shoham/CLionProjects/ex3/src/client/test/test_board.cpp > CMakeFiles/ex3_test.dir/src/client/test/test_board.cpp.i

CMakeFiles/ex3_test.dir/src/client/test/test_board.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex3_test.dir/src/client/test/test_board.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shoham/CLionProjects/ex3/src/client/test/test_board.cpp -o CMakeFiles/ex3_test.dir/src/client/test/test_board.cpp.s

CMakeFiles/ex3_test.dir/src/client/test/test_board.cpp.o.requires:

.PHONY : CMakeFiles/ex3_test.dir/src/client/test/test_board.cpp.o.requires

CMakeFiles/ex3_test.dir/src/client/test/test_board.cpp.o.provides: CMakeFiles/ex3_test.dir/src/client/test/test_board.cpp.o.requires
	$(MAKE) -f CMakeFiles/ex3_test.dir/build.make CMakeFiles/ex3_test.dir/src/client/test/test_board.cpp.o.provides.build
.PHONY : CMakeFiles/ex3_test.dir/src/client/test/test_board.cpp.o.provides

CMakeFiles/ex3_test.dir/src/client/test/test_board.cpp.o.provides.build: CMakeFiles/ex3_test.dir/src/client/test/test_board.cpp.o


CMakeFiles/ex3_test.dir/src/client/test/test_aiPlayer.cpp.o: CMakeFiles/ex3_test.dir/flags.make
CMakeFiles/ex3_test.dir/src/client/test/test_aiPlayer.cpp.o: ../src/client/test/test_aiPlayer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shoham/CLionProjects/ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/ex3_test.dir/src/client/test/test_aiPlayer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ex3_test.dir/src/client/test/test_aiPlayer.cpp.o -c /home/shoham/CLionProjects/ex3/src/client/test/test_aiPlayer.cpp

CMakeFiles/ex3_test.dir/src/client/test/test_aiPlayer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex3_test.dir/src/client/test/test_aiPlayer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shoham/CLionProjects/ex3/src/client/test/test_aiPlayer.cpp > CMakeFiles/ex3_test.dir/src/client/test/test_aiPlayer.cpp.i

CMakeFiles/ex3_test.dir/src/client/test/test_aiPlayer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex3_test.dir/src/client/test/test_aiPlayer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shoham/CLionProjects/ex3/src/client/test/test_aiPlayer.cpp -o CMakeFiles/ex3_test.dir/src/client/test/test_aiPlayer.cpp.s

CMakeFiles/ex3_test.dir/src/client/test/test_aiPlayer.cpp.o.requires:

.PHONY : CMakeFiles/ex3_test.dir/src/client/test/test_aiPlayer.cpp.o.requires

CMakeFiles/ex3_test.dir/src/client/test/test_aiPlayer.cpp.o.provides: CMakeFiles/ex3_test.dir/src/client/test/test_aiPlayer.cpp.o.requires
	$(MAKE) -f CMakeFiles/ex3_test.dir/build.make CMakeFiles/ex3_test.dir/src/client/test/test_aiPlayer.cpp.o.provides.build
.PHONY : CMakeFiles/ex3_test.dir/src/client/test/test_aiPlayer.cpp.o.provides

CMakeFiles/ex3_test.dir/src/client/test/test_aiPlayer.cpp.o.provides.build: CMakeFiles/ex3_test.dir/src/client/test/test_aiPlayer.cpp.o


CMakeFiles/ex3_test.dir/src/client/test/test_gameLogic.cpp.o: CMakeFiles/ex3_test.dir/flags.make
CMakeFiles/ex3_test.dir/src/client/test/test_gameLogic.cpp.o: ../src/client/test/test_gameLogic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shoham/CLionProjects/ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/ex3_test.dir/src/client/test/test_gameLogic.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ex3_test.dir/src/client/test/test_gameLogic.cpp.o -c /home/shoham/CLionProjects/ex3/src/client/test/test_gameLogic.cpp

CMakeFiles/ex3_test.dir/src/client/test/test_gameLogic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex3_test.dir/src/client/test/test_gameLogic.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shoham/CLionProjects/ex3/src/client/test/test_gameLogic.cpp > CMakeFiles/ex3_test.dir/src/client/test/test_gameLogic.cpp.i

CMakeFiles/ex3_test.dir/src/client/test/test_gameLogic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex3_test.dir/src/client/test/test_gameLogic.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shoham/CLionProjects/ex3/src/client/test/test_gameLogic.cpp -o CMakeFiles/ex3_test.dir/src/client/test/test_gameLogic.cpp.s

CMakeFiles/ex3_test.dir/src/client/test/test_gameLogic.cpp.o.requires:

.PHONY : CMakeFiles/ex3_test.dir/src/client/test/test_gameLogic.cpp.o.requires

CMakeFiles/ex3_test.dir/src/client/test/test_gameLogic.cpp.o.provides: CMakeFiles/ex3_test.dir/src/client/test/test_gameLogic.cpp.o.requires
	$(MAKE) -f CMakeFiles/ex3_test.dir/build.make CMakeFiles/ex3_test.dir/src/client/test/test_gameLogic.cpp.o.provides.build
.PHONY : CMakeFiles/ex3_test.dir/src/client/test/test_gameLogic.cpp.o.provides

CMakeFiles/ex3_test.dir/src/client/test/test_gameLogic.cpp.o.provides.build: CMakeFiles/ex3_test.dir/src/client/test/test_gameLogic.cpp.o


CMakeFiles/ex3_test.dir/src/client/src/ClientPlayer.cpp.o: CMakeFiles/ex3_test.dir/flags.make
CMakeFiles/ex3_test.dir/src/client/src/ClientPlayer.cpp.o: ../src/client/src/ClientPlayer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shoham/CLionProjects/ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/ex3_test.dir/src/client/src/ClientPlayer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ex3_test.dir/src/client/src/ClientPlayer.cpp.o -c /home/shoham/CLionProjects/ex3/src/client/src/ClientPlayer.cpp

CMakeFiles/ex3_test.dir/src/client/src/ClientPlayer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex3_test.dir/src/client/src/ClientPlayer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shoham/CLionProjects/ex3/src/client/src/ClientPlayer.cpp > CMakeFiles/ex3_test.dir/src/client/src/ClientPlayer.cpp.i

CMakeFiles/ex3_test.dir/src/client/src/ClientPlayer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex3_test.dir/src/client/src/ClientPlayer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shoham/CLionProjects/ex3/src/client/src/ClientPlayer.cpp -o CMakeFiles/ex3_test.dir/src/client/src/ClientPlayer.cpp.s

CMakeFiles/ex3_test.dir/src/client/src/ClientPlayer.cpp.o.requires:

.PHONY : CMakeFiles/ex3_test.dir/src/client/src/ClientPlayer.cpp.o.requires

CMakeFiles/ex3_test.dir/src/client/src/ClientPlayer.cpp.o.provides: CMakeFiles/ex3_test.dir/src/client/src/ClientPlayer.cpp.o.requires
	$(MAKE) -f CMakeFiles/ex3_test.dir/build.make CMakeFiles/ex3_test.dir/src/client/src/ClientPlayer.cpp.o.provides.build
.PHONY : CMakeFiles/ex3_test.dir/src/client/src/ClientPlayer.cpp.o.provides

CMakeFiles/ex3_test.dir/src/client/src/ClientPlayer.cpp.o.provides.build: CMakeFiles/ex3_test.dir/src/client/src/ClientPlayer.cpp.o


CMakeFiles/ex3_test.dir/src/client/src/RemotePlayer.cpp.o: CMakeFiles/ex3_test.dir/flags.make
CMakeFiles/ex3_test.dir/src/client/src/RemotePlayer.cpp.o: ../src/client/src/RemotePlayer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shoham/CLionProjects/ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/ex3_test.dir/src/client/src/RemotePlayer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ex3_test.dir/src/client/src/RemotePlayer.cpp.o -c /home/shoham/CLionProjects/ex3/src/client/src/RemotePlayer.cpp

CMakeFiles/ex3_test.dir/src/client/src/RemotePlayer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex3_test.dir/src/client/src/RemotePlayer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shoham/CLionProjects/ex3/src/client/src/RemotePlayer.cpp > CMakeFiles/ex3_test.dir/src/client/src/RemotePlayer.cpp.i

CMakeFiles/ex3_test.dir/src/client/src/RemotePlayer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex3_test.dir/src/client/src/RemotePlayer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shoham/CLionProjects/ex3/src/client/src/RemotePlayer.cpp -o CMakeFiles/ex3_test.dir/src/client/src/RemotePlayer.cpp.s

CMakeFiles/ex3_test.dir/src/client/src/RemotePlayer.cpp.o.requires:

.PHONY : CMakeFiles/ex3_test.dir/src/client/src/RemotePlayer.cpp.o.requires

CMakeFiles/ex3_test.dir/src/client/src/RemotePlayer.cpp.o.provides: CMakeFiles/ex3_test.dir/src/client/src/RemotePlayer.cpp.o.requires
	$(MAKE) -f CMakeFiles/ex3_test.dir/build.make CMakeFiles/ex3_test.dir/src/client/src/RemotePlayer.cpp.o.provides.build
.PHONY : CMakeFiles/ex3_test.dir/src/client/src/RemotePlayer.cpp.o.provides

CMakeFiles/ex3_test.dir/src/client/src/RemotePlayer.cpp.o.provides.build: CMakeFiles/ex3_test.dir/src/client/src/RemotePlayer.cpp.o


CMakeFiles/ex3_test.dir/src/client/src/Client.cpp.o: CMakeFiles/ex3_test.dir/flags.make
CMakeFiles/ex3_test.dir/src/client/src/Client.cpp.o: ../src/client/src/Client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shoham/CLionProjects/ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/ex3_test.dir/src/client/src/Client.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ex3_test.dir/src/client/src/Client.cpp.o -c /home/shoham/CLionProjects/ex3/src/client/src/Client.cpp

CMakeFiles/ex3_test.dir/src/client/src/Client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex3_test.dir/src/client/src/Client.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shoham/CLionProjects/ex3/src/client/src/Client.cpp > CMakeFiles/ex3_test.dir/src/client/src/Client.cpp.i

CMakeFiles/ex3_test.dir/src/client/src/Client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex3_test.dir/src/client/src/Client.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shoham/CLionProjects/ex3/src/client/src/Client.cpp -o CMakeFiles/ex3_test.dir/src/client/src/Client.cpp.s

CMakeFiles/ex3_test.dir/src/client/src/Client.cpp.o.requires:

.PHONY : CMakeFiles/ex3_test.dir/src/client/src/Client.cpp.o.requires

CMakeFiles/ex3_test.dir/src/client/src/Client.cpp.o.provides: CMakeFiles/ex3_test.dir/src/client/src/Client.cpp.o.requires
	$(MAKE) -f CMakeFiles/ex3_test.dir/build.make CMakeFiles/ex3_test.dir/src/client/src/Client.cpp.o.provides.build
.PHONY : CMakeFiles/ex3_test.dir/src/client/src/Client.cpp.o.provides

CMakeFiles/ex3_test.dir/src/client/src/Client.cpp.o.provides.build: CMakeFiles/ex3_test.dir/src/client/src/Client.cpp.o


CMakeFiles/ex3_test.dir/src/server/Server.cpp.o: CMakeFiles/ex3_test.dir/flags.make
CMakeFiles/ex3_test.dir/src/server/Server.cpp.o: ../src/server/Server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shoham/CLionProjects/ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/ex3_test.dir/src/server/Server.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ex3_test.dir/src/server/Server.cpp.o -c /home/shoham/CLionProjects/ex3/src/server/Server.cpp

CMakeFiles/ex3_test.dir/src/server/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex3_test.dir/src/server/Server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shoham/CLionProjects/ex3/src/server/Server.cpp > CMakeFiles/ex3_test.dir/src/server/Server.cpp.i

CMakeFiles/ex3_test.dir/src/server/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex3_test.dir/src/server/Server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shoham/CLionProjects/ex3/src/server/Server.cpp -o CMakeFiles/ex3_test.dir/src/server/Server.cpp.s

CMakeFiles/ex3_test.dir/src/server/Server.cpp.o.requires:

.PHONY : CMakeFiles/ex3_test.dir/src/server/Server.cpp.o.requires

CMakeFiles/ex3_test.dir/src/server/Server.cpp.o.provides: CMakeFiles/ex3_test.dir/src/server/Server.cpp.o.requires
	$(MAKE) -f CMakeFiles/ex3_test.dir/build.make CMakeFiles/ex3_test.dir/src/server/Server.cpp.o.provides.build
.PHONY : CMakeFiles/ex3_test.dir/src/server/Server.cpp.o.provides

CMakeFiles/ex3_test.dir/src/server/Server.cpp.o.provides.build: CMakeFiles/ex3_test.dir/src/server/Server.cpp.o


CMakeFiles/ex3_test.dir/src/server/main.cpp.o: CMakeFiles/ex3_test.dir/flags.make
CMakeFiles/ex3_test.dir/src/server/main.cpp.o: ../src/server/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shoham/CLionProjects/ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/ex3_test.dir/src/server/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ex3_test.dir/src/server/main.cpp.o -c /home/shoham/CLionProjects/ex3/src/server/main.cpp

CMakeFiles/ex3_test.dir/src/server/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ex3_test.dir/src/server/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shoham/CLionProjects/ex3/src/server/main.cpp > CMakeFiles/ex3_test.dir/src/server/main.cpp.i

CMakeFiles/ex3_test.dir/src/server/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ex3_test.dir/src/server/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shoham/CLionProjects/ex3/src/server/main.cpp -o CMakeFiles/ex3_test.dir/src/server/main.cpp.s

CMakeFiles/ex3_test.dir/src/server/main.cpp.o.requires:

.PHONY : CMakeFiles/ex3_test.dir/src/server/main.cpp.o.requires

CMakeFiles/ex3_test.dir/src/server/main.cpp.o.provides: CMakeFiles/ex3_test.dir/src/server/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/ex3_test.dir/build.make CMakeFiles/ex3_test.dir/src/server/main.cpp.o.provides.build
.PHONY : CMakeFiles/ex3_test.dir/src/server/main.cpp.o.provides

CMakeFiles/ex3_test.dir/src/server/main.cpp.o.provides.build: CMakeFiles/ex3_test.dir/src/server/main.cpp.o


# Object files for target ex3_test
ex3_test_OBJECTS = \
"CMakeFiles/ex3_test.dir/src/client/src/Board.cpp.o" \
"CMakeFiles/ex3_test.dir/src/client/src/GameLogic.cpp.o" \
"CMakeFiles/ex3_test.dir/src/client/src/Game.cpp.o" \
"CMakeFiles/ex3_test.dir/src/client/src/Player.cpp.o" \
"CMakeFiles/ex3_test.dir/src/client/src/HumanPlayer.cpp.o" \
"CMakeFiles/ex3_test.dir/src/client/src/AIPlayer.cpp.o" \
"CMakeFiles/ex3_test.dir/src/client/src/Square.cpp.o" \
"CMakeFiles/ex3_test.dir/src/client/test/gtest_main.cpp.o" \
"CMakeFiles/ex3_test.dir/src/client/test/test_board.cpp.o" \
"CMakeFiles/ex3_test.dir/src/client/test/test_aiPlayer.cpp.o" \
"CMakeFiles/ex3_test.dir/src/client/test/test_gameLogic.cpp.o" \
"CMakeFiles/ex3_test.dir/src/client/src/ClientPlayer.cpp.o" \
"CMakeFiles/ex3_test.dir/src/client/src/RemotePlayer.cpp.o" \
"CMakeFiles/ex3_test.dir/src/client/src/Client.cpp.o" \
"CMakeFiles/ex3_test.dir/src/server/Server.cpp.o" \
"CMakeFiles/ex3_test.dir/src/server/main.cpp.o"

# External object files for target ex3_test
ex3_test_EXTERNAL_OBJECTS =

ex3_test: CMakeFiles/ex3_test.dir/src/client/src/Board.cpp.o
ex3_test: CMakeFiles/ex3_test.dir/src/client/src/GameLogic.cpp.o
ex3_test: CMakeFiles/ex3_test.dir/src/client/src/Game.cpp.o
ex3_test: CMakeFiles/ex3_test.dir/src/client/src/Player.cpp.o
ex3_test: CMakeFiles/ex3_test.dir/src/client/src/HumanPlayer.cpp.o
ex3_test: CMakeFiles/ex3_test.dir/src/client/src/AIPlayer.cpp.o
ex3_test: CMakeFiles/ex3_test.dir/src/client/src/Square.cpp.o
ex3_test: CMakeFiles/ex3_test.dir/src/client/test/gtest_main.cpp.o
ex3_test: CMakeFiles/ex3_test.dir/src/client/test/test_board.cpp.o
ex3_test: CMakeFiles/ex3_test.dir/src/client/test/test_aiPlayer.cpp.o
ex3_test: CMakeFiles/ex3_test.dir/src/client/test/test_gameLogic.cpp.o
ex3_test: CMakeFiles/ex3_test.dir/src/client/src/ClientPlayer.cpp.o
ex3_test: CMakeFiles/ex3_test.dir/src/client/src/RemotePlayer.cpp.o
ex3_test: CMakeFiles/ex3_test.dir/src/client/src/Client.cpp.o
ex3_test: CMakeFiles/ex3_test.dir/src/server/Server.cpp.o
ex3_test: CMakeFiles/ex3_test.dir/src/server/main.cpp.o
ex3_test: CMakeFiles/ex3_test.dir/build.make
ex3_test: src/client/lib/googletest-master/googlemock/gtest/libgtestd.a
ex3_test: src/client/lib/googletest-master/googlemock/gtest/libgtest_maind.a
ex3_test: src/client/lib/googletest-master/googlemock/libgmockd.a
ex3_test: src/client/lib/googletest-master/googlemock/gtest/libgtestd.a
ex3_test: CMakeFiles/ex3_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/shoham/CLionProjects/ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Linking CXX executable ex3_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ex3_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ex3_test.dir/build: ex3_test

.PHONY : CMakeFiles/ex3_test.dir/build

CMakeFiles/ex3_test.dir/requires: CMakeFiles/ex3_test.dir/src/client/src/Board.cpp.o.requires
CMakeFiles/ex3_test.dir/requires: CMakeFiles/ex3_test.dir/src/client/src/GameLogic.cpp.o.requires
CMakeFiles/ex3_test.dir/requires: CMakeFiles/ex3_test.dir/src/client/src/Game.cpp.o.requires
CMakeFiles/ex3_test.dir/requires: CMakeFiles/ex3_test.dir/src/client/src/Player.cpp.o.requires
CMakeFiles/ex3_test.dir/requires: CMakeFiles/ex3_test.dir/src/client/src/HumanPlayer.cpp.o.requires
CMakeFiles/ex3_test.dir/requires: CMakeFiles/ex3_test.dir/src/client/src/AIPlayer.cpp.o.requires
CMakeFiles/ex3_test.dir/requires: CMakeFiles/ex3_test.dir/src/client/src/Square.cpp.o.requires
CMakeFiles/ex3_test.dir/requires: CMakeFiles/ex3_test.dir/src/client/test/gtest_main.cpp.o.requires
CMakeFiles/ex3_test.dir/requires: CMakeFiles/ex3_test.dir/src/client/test/test_board.cpp.o.requires
CMakeFiles/ex3_test.dir/requires: CMakeFiles/ex3_test.dir/src/client/test/test_aiPlayer.cpp.o.requires
CMakeFiles/ex3_test.dir/requires: CMakeFiles/ex3_test.dir/src/client/test/test_gameLogic.cpp.o.requires
CMakeFiles/ex3_test.dir/requires: CMakeFiles/ex3_test.dir/src/client/src/ClientPlayer.cpp.o.requires
CMakeFiles/ex3_test.dir/requires: CMakeFiles/ex3_test.dir/src/client/src/RemotePlayer.cpp.o.requires
CMakeFiles/ex3_test.dir/requires: CMakeFiles/ex3_test.dir/src/client/src/Client.cpp.o.requires
CMakeFiles/ex3_test.dir/requires: CMakeFiles/ex3_test.dir/src/server/Server.cpp.o.requires
CMakeFiles/ex3_test.dir/requires: CMakeFiles/ex3_test.dir/src/server/main.cpp.o.requires

.PHONY : CMakeFiles/ex3_test.dir/requires

CMakeFiles/ex3_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ex3_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ex3_test.dir/clean

CMakeFiles/ex3_test.dir/depend:
	cd /home/shoham/CLionProjects/ex3/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shoham/CLionProjects/ex3 /home/shoham/CLionProjects/ex3 /home/shoham/CLionProjects/ex3/cmake-build-debug /home/shoham/CLionProjects/ex3/cmake-build-debug /home/shoham/CLionProjects/ex3/cmake-build-debug/CMakeFiles/ex3_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ex3_test.dir/depend

