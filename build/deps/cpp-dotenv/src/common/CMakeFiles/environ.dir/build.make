# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build

# Include any dependencies generated for this target.
include deps/cpp-dotenv/src/common/CMakeFiles/environ.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include deps/cpp-dotenv/src/common/CMakeFiles/environ.dir/compiler_depend.make

# Include the progress variables for this target.
include deps/cpp-dotenv/src/common/CMakeFiles/environ.dir/progress.make

# Include the compile flags for this target's objects.
include deps/cpp-dotenv/src/common/CMakeFiles/environ.dir/flags.make

deps/cpp-dotenv/src/common/CMakeFiles/environ.dir/environ.cpp.o: deps/cpp-dotenv/src/common/CMakeFiles/environ.dir/flags.make
deps/cpp-dotenv/src/common/CMakeFiles/environ.dir/environ.cpp.o: ../deps/cpp-dotenv/src/common/environ.cpp
deps/cpp-dotenv/src/common/CMakeFiles/environ.dir/environ.cpp.o: deps/cpp-dotenv/src/common/CMakeFiles/environ.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object deps/cpp-dotenv/src/common/CMakeFiles/environ.dir/environ.cpp.o"
	cd /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/deps/cpp-dotenv/src/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT deps/cpp-dotenv/src/common/CMakeFiles/environ.dir/environ.cpp.o -MF CMakeFiles/environ.dir/environ.cpp.o.d -o CMakeFiles/environ.dir/environ.cpp.o -c /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/deps/cpp-dotenv/src/common/environ.cpp

deps/cpp-dotenv/src/common/CMakeFiles/environ.dir/environ.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/environ.dir/environ.cpp.i"
	cd /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/deps/cpp-dotenv/src/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/deps/cpp-dotenv/src/common/environ.cpp > CMakeFiles/environ.dir/environ.cpp.i

deps/cpp-dotenv/src/common/CMakeFiles/environ.dir/environ.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/environ.dir/environ.cpp.s"
	cd /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/deps/cpp-dotenv/src/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/deps/cpp-dotenv/src/common/environ.cpp -o CMakeFiles/environ.dir/environ.cpp.s

# Object files for target environ
environ_OBJECTS = \
"CMakeFiles/environ.dir/environ.cpp.o"

# External object files for target environ
environ_EXTERNAL_OBJECTS =

deps/cpp-dotenv/src/common/libenviron.so: deps/cpp-dotenv/src/common/CMakeFiles/environ.dir/environ.cpp.o
deps/cpp-dotenv/src/common/libenviron.so: deps/cpp-dotenv/src/common/CMakeFiles/environ.dir/build.make
deps/cpp-dotenv/src/common/libenviron.so: deps/cpp-dotenv/src/common/CMakeFiles/environ.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libenviron.so"
	cd /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/deps/cpp-dotenv/src/common && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/environ.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/cpp-dotenv/src/common/CMakeFiles/environ.dir/build: deps/cpp-dotenv/src/common/libenviron.so
.PHONY : deps/cpp-dotenv/src/common/CMakeFiles/environ.dir/build

deps/cpp-dotenv/src/common/CMakeFiles/environ.dir/clean:
	cd /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/deps/cpp-dotenv/src/common && $(CMAKE_COMMAND) -P CMakeFiles/environ.dir/cmake_clean.cmake
.PHONY : deps/cpp-dotenv/src/common/CMakeFiles/environ.dir/clean

deps/cpp-dotenv/src/common/CMakeFiles/environ.dir/depend:
	cd /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/deps/cpp-dotenv/src/common /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/deps/cpp-dotenv/src/common /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/deps/cpp-dotenv/src/common/CMakeFiles/environ.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/cpp-dotenv/src/common/CMakeFiles/environ.dir/depend
