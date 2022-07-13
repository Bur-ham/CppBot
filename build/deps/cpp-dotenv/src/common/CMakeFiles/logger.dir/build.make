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
include deps/cpp-dotenv/src/common/CMakeFiles/logger.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include deps/cpp-dotenv/src/common/CMakeFiles/logger.dir/compiler_depend.make

# Include the progress variables for this target.
include deps/cpp-dotenv/src/common/CMakeFiles/logger.dir/progress.make

# Include the compile flags for this target's objects.
include deps/cpp-dotenv/src/common/CMakeFiles/logger.dir/flags.make

deps/cpp-dotenv/src/common/CMakeFiles/logger.dir/logger.cpp.o: deps/cpp-dotenv/src/common/CMakeFiles/logger.dir/flags.make
deps/cpp-dotenv/src/common/CMakeFiles/logger.dir/logger.cpp.o: ../deps/cpp-dotenv/src/common/logger.cpp
deps/cpp-dotenv/src/common/CMakeFiles/logger.dir/logger.cpp.o: deps/cpp-dotenv/src/common/CMakeFiles/logger.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object deps/cpp-dotenv/src/common/CMakeFiles/logger.dir/logger.cpp.o"
	cd /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/deps/cpp-dotenv/src/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT deps/cpp-dotenv/src/common/CMakeFiles/logger.dir/logger.cpp.o -MF CMakeFiles/logger.dir/logger.cpp.o.d -o CMakeFiles/logger.dir/logger.cpp.o -c /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/deps/cpp-dotenv/src/common/logger.cpp

deps/cpp-dotenv/src/common/CMakeFiles/logger.dir/logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/logger.dir/logger.cpp.i"
	cd /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/deps/cpp-dotenv/src/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/deps/cpp-dotenv/src/common/logger.cpp > CMakeFiles/logger.dir/logger.cpp.i

deps/cpp-dotenv/src/common/CMakeFiles/logger.dir/logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/logger.dir/logger.cpp.s"
	cd /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/deps/cpp-dotenv/src/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/deps/cpp-dotenv/src/common/logger.cpp -o CMakeFiles/logger.dir/logger.cpp.s

# Object files for target logger
logger_OBJECTS = \
"CMakeFiles/logger.dir/logger.cpp.o"

# External object files for target logger
logger_EXTERNAL_OBJECTS =

deps/cpp-dotenv/src/common/liblogger.so: deps/cpp-dotenv/src/common/CMakeFiles/logger.dir/logger.cpp.o
deps/cpp-dotenv/src/common/liblogger.so: deps/cpp-dotenv/src/common/CMakeFiles/logger.dir/build.make
deps/cpp-dotenv/src/common/liblogger.so: deps/cpp-dotenv/src/common/CMakeFiles/logger.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library liblogger.so"
	cd /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/deps/cpp-dotenv/src/common && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/logger.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
deps/cpp-dotenv/src/common/CMakeFiles/logger.dir/build: deps/cpp-dotenv/src/common/liblogger.so
.PHONY : deps/cpp-dotenv/src/common/CMakeFiles/logger.dir/build

deps/cpp-dotenv/src/common/CMakeFiles/logger.dir/clean:
	cd /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/deps/cpp-dotenv/src/common && $(CMAKE_COMMAND) -P CMakeFiles/logger.dir/cmake_clean.cmake
.PHONY : deps/cpp-dotenv/src/common/CMakeFiles/logger.dir/clean

deps/cpp-dotenv/src/common/CMakeFiles/logger.dir/depend:
	cd /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/deps/cpp-dotenv/src/common /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/deps/cpp-dotenv/src/common /home/bubble/Extras/Projects/MessingAroundWithCpp/CppBot/build/deps/cpp-dotenv/src/common/CMakeFiles/logger.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : deps/cpp-dotenv/src/common/CMakeFiles/logger.dir/depend

