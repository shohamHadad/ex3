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
include src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/depend.make

# Include the progress variables for this target.
include src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/progress.make

# Include the compile flags for this target's objects.
include src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/flags.make

src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.o: src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/flags.make
src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.o: ../src/client/lib/googletest-master/googletest/src/gtest-all.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shoham/CLionProjects/ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.o"
	cd /home/shoham/CLionProjects/ex3/cmake-build-debug/src/client/lib/googletest-master/googlemock && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.o -c /home/shoham/CLionProjects/ex3/src/client/lib/googletest-master/googletest/src/gtest-all.cc

src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.i"
	cd /home/shoham/CLionProjects/ex3/cmake-build-debug/src/client/lib/googletest-master/googlemock && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shoham/CLionProjects/ex3/src/client/lib/googletest-master/googletest/src/gtest-all.cc > CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.i

src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.s"
	cd /home/shoham/CLionProjects/ex3/cmake-build-debug/src/client/lib/googletest-master/googlemock && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shoham/CLionProjects/ex3/src/client/lib/googletest-master/googletest/src/gtest-all.cc -o CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.s

src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.o.requires:

.PHONY : src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.o.requires

src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.o.provides: src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.o.requires
	$(MAKE) -f src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/build.make src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.o.provides.build
.PHONY : src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.o.provides

src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.o.provides.build: src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.o


src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock-all.cc.o: src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/flags.make
src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock-all.cc.o: ../src/client/lib/googletest-master/googlemock/src/gmock-all.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shoham/CLionProjects/ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock-all.cc.o"
	cd /home/shoham/CLionProjects/ex3/cmake-build-debug/src/client/lib/googletest-master/googlemock && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gmock_main.dir/src/gmock-all.cc.o -c /home/shoham/CLionProjects/ex3/src/client/lib/googletest-master/googlemock/src/gmock-all.cc

src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gmock_main.dir/src/gmock-all.cc.i"
	cd /home/shoham/CLionProjects/ex3/cmake-build-debug/src/client/lib/googletest-master/googlemock && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shoham/CLionProjects/ex3/src/client/lib/googletest-master/googlemock/src/gmock-all.cc > CMakeFiles/gmock_main.dir/src/gmock-all.cc.i

src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gmock_main.dir/src/gmock-all.cc.s"
	cd /home/shoham/CLionProjects/ex3/cmake-build-debug/src/client/lib/googletest-master/googlemock && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shoham/CLionProjects/ex3/src/client/lib/googletest-master/googlemock/src/gmock-all.cc -o CMakeFiles/gmock_main.dir/src/gmock-all.cc.s

src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock-all.cc.o.requires:

.PHONY : src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock-all.cc.o.requires

src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock-all.cc.o.provides: src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock-all.cc.o.requires
	$(MAKE) -f src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/build.make src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock-all.cc.o.provides.build
.PHONY : src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock-all.cc.o.provides

src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock-all.cc.o.provides.build: src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock-all.cc.o


src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o: src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/flags.make
src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o: ../src/client/lib/googletest-master/googlemock/src/gmock_main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shoham/CLionProjects/ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o"
	cd /home/shoham/CLionProjects/ex3/cmake-build-debug/src/client/lib/googletest-master/googlemock && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gmock_main.dir/src/gmock_main.cc.o -c /home/shoham/CLionProjects/ex3/src/client/lib/googletest-master/googlemock/src/gmock_main.cc

src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gmock_main.dir/src/gmock_main.cc.i"
	cd /home/shoham/CLionProjects/ex3/cmake-build-debug/src/client/lib/googletest-master/googlemock && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shoham/CLionProjects/ex3/src/client/lib/googletest-master/googlemock/src/gmock_main.cc > CMakeFiles/gmock_main.dir/src/gmock_main.cc.i

src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gmock_main.dir/src/gmock_main.cc.s"
	cd /home/shoham/CLionProjects/ex3/cmake-build-debug/src/client/lib/googletest-master/googlemock && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shoham/CLionProjects/ex3/src/client/lib/googletest-master/googlemock/src/gmock_main.cc -o CMakeFiles/gmock_main.dir/src/gmock_main.cc.s

src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o.requires:

.PHONY : src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o.requires

src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o.provides: src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o.requires
	$(MAKE) -f src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/build.make src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o.provides.build
.PHONY : src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o.provides

src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o.provides.build: src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o


# Object files for target gmock_main
gmock_main_OBJECTS = \
"CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.o" \
"CMakeFiles/gmock_main.dir/src/gmock-all.cc.o" \
"CMakeFiles/gmock_main.dir/src/gmock_main.cc.o"

# External object files for target gmock_main
gmock_main_EXTERNAL_OBJECTS =

src/client/lib/googletest-master/googlemock/libgmock_maind.a: src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.o
src/client/lib/googletest-master/googlemock/libgmock_maind.a: src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock-all.cc.o
src/client/lib/googletest-master/googlemock/libgmock_maind.a: src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o
src/client/lib/googletest-master/googlemock/libgmock_maind.a: src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/build.make
src/client/lib/googletest-master/googlemock/libgmock_maind.a: src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/shoham/CLionProjects/ex3/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libgmock_maind.a"
	cd /home/shoham/CLionProjects/ex3/cmake-build-debug/src/client/lib/googletest-master/googlemock && $(CMAKE_COMMAND) -P CMakeFiles/gmock_main.dir/cmake_clean_target.cmake
	cd /home/shoham/CLionProjects/ex3/cmake-build-debug/src/client/lib/googletest-master/googlemock && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gmock_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/build: src/client/lib/googletest-master/googlemock/libgmock_maind.a

.PHONY : src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/build

src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/requires: src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/__/googletest/src/gtest-all.cc.o.requires
src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/requires: src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock-all.cc.o.requires
src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/requires: src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o.requires

.PHONY : src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/requires

src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/clean:
	cd /home/shoham/CLionProjects/ex3/cmake-build-debug/src/client/lib/googletest-master/googlemock && $(CMAKE_COMMAND) -P CMakeFiles/gmock_main.dir/cmake_clean.cmake
.PHONY : src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/clean

src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/depend:
	cd /home/shoham/CLionProjects/ex3/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shoham/CLionProjects/ex3 /home/shoham/CLionProjects/ex3/src/client/lib/googletest-master/googlemock /home/shoham/CLionProjects/ex3/cmake-build-debug /home/shoham/CLionProjects/ex3/cmake-build-debug/src/client/lib/googletest-master/googlemock /home/shoham/CLionProjects/ex3/cmake-build-debug/src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/client/lib/googletest-master/googlemock/CMakeFiles/gmock_main.dir/depend
