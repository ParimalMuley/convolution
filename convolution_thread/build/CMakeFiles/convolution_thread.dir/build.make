# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/muleyparimal33/convolution_thread

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/muleyparimal33/convolution_thread/build

# Include any dependencies generated for this target.
include CMakeFiles/convolution_thread.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/convolution_thread.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/convolution_thread.dir/flags.make

CMakeFiles/convolution_thread.dir/convolution_multi.cpp.o: CMakeFiles/convolution_thread.dir/flags.make
CMakeFiles/convolution_thread.dir/convolution_multi.cpp.o: ../convolution_multi.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/muleyparimal33/convolution_thread/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/convolution_thread.dir/convolution_multi.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/convolution_thread.dir/convolution_multi.cpp.o -c /home/muleyparimal33/convolution_thread/convolution_multi.cpp

CMakeFiles/convolution_thread.dir/convolution_multi.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/convolution_thread.dir/convolution_multi.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/muleyparimal33/convolution_thread/convolution_multi.cpp > CMakeFiles/convolution_thread.dir/convolution_multi.cpp.i

CMakeFiles/convolution_thread.dir/convolution_multi.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/convolution_thread.dir/convolution_multi.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/muleyparimal33/convolution_thread/convolution_multi.cpp -o CMakeFiles/convolution_thread.dir/convolution_multi.cpp.s

# Object files for target convolution_thread
convolution_thread_OBJECTS = \
"CMakeFiles/convolution_thread.dir/convolution_multi.cpp.o"

# External object files for target convolution_thread
convolution_thread_EXTERNAL_OBJECTS =

convolution_thread: CMakeFiles/convolution_thread.dir/convolution_multi.cpp.o
convolution_thread: CMakeFiles/convolution_thread.dir/build.make
convolution_thread: CMakeFiles/convolution_thread.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/muleyparimal33/convolution_thread/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable convolution_thread"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/convolution_thread.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/convolution_thread.dir/build: convolution_thread

.PHONY : CMakeFiles/convolution_thread.dir/build

CMakeFiles/convolution_thread.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/convolution_thread.dir/cmake_clean.cmake
.PHONY : CMakeFiles/convolution_thread.dir/clean

CMakeFiles/convolution_thread.dir/depend:
	cd /home/muleyparimal33/convolution_thread/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/muleyparimal33/convolution_thread /home/muleyparimal33/convolution_thread /home/muleyparimal33/convolution_thread/build /home/muleyparimal33/convolution_thread/build /home/muleyparimal33/convolution_thread/build/CMakeFiles/convolution_thread.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/convolution_thread.dir/depend

