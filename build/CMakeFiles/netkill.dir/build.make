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
CMAKE_COMMAND = /usr/local/lib/python3.8/dist-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /usr/local/lib/python3.8/dist-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/juded/OneDrive/Documents/InfoSec/netkill

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/juded/OneDrive/Documents/InfoSec/netkill/build

# Include any dependencies generated for this target.
include CMakeFiles/netkill.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/netkill.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/netkill.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/netkill.dir/flags.make

CMakeFiles/netkill.dir/netkill.c.o: CMakeFiles/netkill.dir/flags.make
CMakeFiles/netkill.dir/netkill.c.o: ../netkill.c
CMakeFiles/netkill.dir/netkill.c.o: CMakeFiles/netkill.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/juded/OneDrive/Documents/InfoSec/netkill/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/netkill.dir/netkill.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/netkill.dir/netkill.c.o -MF CMakeFiles/netkill.dir/netkill.c.o.d -o CMakeFiles/netkill.dir/netkill.c.o -c /mnt/c/Users/juded/OneDrive/Documents/InfoSec/netkill/netkill.c

CMakeFiles/netkill.dir/netkill.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/netkill.dir/netkill.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/juded/OneDrive/Documents/InfoSec/netkill/netkill.c > CMakeFiles/netkill.dir/netkill.c.i

CMakeFiles/netkill.dir/netkill.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/netkill.dir/netkill.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/juded/OneDrive/Documents/InfoSec/netkill/netkill.c -o CMakeFiles/netkill.dir/netkill.c.s

CMakeFiles/netkill.dir/src/networking.c.o: CMakeFiles/netkill.dir/flags.make
CMakeFiles/netkill.dir/src/networking.c.o: ../src/networking.c
CMakeFiles/netkill.dir/src/networking.c.o: CMakeFiles/netkill.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/juded/OneDrive/Documents/InfoSec/netkill/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/netkill.dir/src/networking.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/netkill.dir/src/networking.c.o -MF CMakeFiles/netkill.dir/src/networking.c.o.d -o CMakeFiles/netkill.dir/src/networking.c.o -c /mnt/c/Users/juded/OneDrive/Documents/InfoSec/netkill/src/networking.c

CMakeFiles/netkill.dir/src/networking.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/netkill.dir/src/networking.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/juded/OneDrive/Documents/InfoSec/netkill/src/networking.c > CMakeFiles/netkill.dir/src/networking.c.i

CMakeFiles/netkill.dir/src/networking.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/netkill.dir/src/networking.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/juded/OneDrive/Documents/InfoSec/netkill/src/networking.c -o CMakeFiles/netkill.dir/src/networking.c.s

CMakeFiles/netkill.dir/src/rand.c.o: CMakeFiles/netkill.dir/flags.make
CMakeFiles/netkill.dir/src/rand.c.o: ../src/rand.c
CMakeFiles/netkill.dir/src/rand.c.o: CMakeFiles/netkill.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/juded/OneDrive/Documents/InfoSec/netkill/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/netkill.dir/src/rand.c.o"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/netkill.dir/src/rand.c.o -MF CMakeFiles/netkill.dir/src/rand.c.o.d -o CMakeFiles/netkill.dir/src/rand.c.o -c /mnt/c/Users/juded/OneDrive/Documents/InfoSec/netkill/src/rand.c

CMakeFiles/netkill.dir/src/rand.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/netkill.dir/src/rand.c.i"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/juded/OneDrive/Documents/InfoSec/netkill/src/rand.c > CMakeFiles/netkill.dir/src/rand.c.i

CMakeFiles/netkill.dir/src/rand.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/netkill.dir/src/rand.c.s"
	/usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/juded/OneDrive/Documents/InfoSec/netkill/src/rand.c -o CMakeFiles/netkill.dir/src/rand.c.s

# Object files for target netkill
netkill_OBJECTS = \
"CMakeFiles/netkill.dir/netkill.c.o" \
"CMakeFiles/netkill.dir/src/networking.c.o" \
"CMakeFiles/netkill.dir/src/rand.c.o"

# External object files for target netkill
netkill_EXTERNAL_OBJECTS =

netkill: CMakeFiles/netkill.dir/netkill.c.o
netkill: CMakeFiles/netkill.dir/src/networking.c.o
netkill: CMakeFiles/netkill.dir/src/rand.c.o
netkill: CMakeFiles/netkill.dir/build.make
netkill: CMakeFiles/netkill.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/juded/OneDrive/Documents/InfoSec/netkill/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable netkill"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/netkill.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/netkill.dir/build: netkill
.PHONY : CMakeFiles/netkill.dir/build

CMakeFiles/netkill.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/netkill.dir/cmake_clean.cmake
.PHONY : CMakeFiles/netkill.dir/clean

CMakeFiles/netkill.dir/depend:
	cd /mnt/c/Users/juded/OneDrive/Documents/InfoSec/netkill/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/juded/OneDrive/Documents/InfoSec/netkill /mnt/c/Users/juded/OneDrive/Documents/InfoSec/netkill /mnt/c/Users/juded/OneDrive/Documents/InfoSec/netkill/build /mnt/c/Users/juded/OneDrive/Documents/InfoSec/netkill/build /mnt/c/Users/juded/OneDrive/Documents/InfoSec/netkill/build/CMakeFiles/netkill.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/netkill.dir/depend

