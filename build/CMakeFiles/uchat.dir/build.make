# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/ethan/Desktop/unsigned-chat/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ethan/Desktop/unsigned-chat/build

# Include any dependencies generated for this target.
include CMakeFiles/uchat.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/uchat.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/uchat.dir/flags.make

CMakeFiles/uchat.dir/uchat/client.c.o: CMakeFiles/uchat.dir/flags.make
CMakeFiles/uchat.dir/uchat/client.c.o: /home/ethan/Desktop/unsigned-chat/src/uchat/client.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ethan/Desktop/unsigned-chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/uchat.dir/uchat/client.c.o"
	/usr/bin/cc  $(C_DEFINES) -D__FILENAME__=client.c $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/uchat.dir/uchat/client.c.o   -c /home/ethan/Desktop/unsigned-chat/src/uchat/client.c

CMakeFiles/uchat.dir/uchat/client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/uchat.dir/uchat/client.c.i"
	/usr/bin/cc  $(C_DEFINES) -D__FILENAME__=client.c $(C_INCLUDES) $(C_FLAGS) -E /home/ethan/Desktop/unsigned-chat/src/uchat/client.c > CMakeFiles/uchat.dir/uchat/client.c.i

CMakeFiles/uchat.dir/uchat/client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/uchat.dir/uchat/client.c.s"
	/usr/bin/cc  $(C_DEFINES) -D__FILENAME__=client.c $(C_INCLUDES) $(C_FLAGS) -S /home/ethan/Desktop/unsigned-chat/src/uchat/client.c -o CMakeFiles/uchat.dir/uchat/client.c.s

CMakeFiles/uchat.dir/uchat/client.c.o.requires:

.PHONY : CMakeFiles/uchat.dir/uchat/client.c.o.requires

CMakeFiles/uchat.dir/uchat/client.c.o.provides: CMakeFiles/uchat.dir/uchat/client.c.o.requires
	$(MAKE) -f CMakeFiles/uchat.dir/build.make CMakeFiles/uchat.dir/uchat/client.c.o.provides.build
.PHONY : CMakeFiles/uchat.dir/uchat/client.c.o.provides

CMakeFiles/uchat.dir/uchat/client.c.o.provides.build: CMakeFiles/uchat.dir/uchat/client.c.o


CMakeFiles/uchat.dir/uchat/server.c.o: CMakeFiles/uchat.dir/flags.make
CMakeFiles/uchat.dir/uchat/server.c.o: /home/ethan/Desktop/unsigned-chat/src/uchat/server.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ethan/Desktop/unsigned-chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/uchat.dir/uchat/server.c.o"
	/usr/bin/cc  $(C_DEFINES) -D__FILENAME__=server.c $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/uchat.dir/uchat/server.c.o   -c /home/ethan/Desktop/unsigned-chat/src/uchat/server.c

CMakeFiles/uchat.dir/uchat/server.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/uchat.dir/uchat/server.c.i"
	/usr/bin/cc  $(C_DEFINES) -D__FILENAME__=server.c $(C_INCLUDES) $(C_FLAGS) -E /home/ethan/Desktop/unsigned-chat/src/uchat/server.c > CMakeFiles/uchat.dir/uchat/server.c.i

CMakeFiles/uchat.dir/uchat/server.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/uchat.dir/uchat/server.c.s"
	/usr/bin/cc  $(C_DEFINES) -D__FILENAME__=server.c $(C_INCLUDES) $(C_FLAGS) -S /home/ethan/Desktop/unsigned-chat/src/uchat/server.c -o CMakeFiles/uchat.dir/uchat/server.c.s

CMakeFiles/uchat.dir/uchat/server.c.o.requires:

.PHONY : CMakeFiles/uchat.dir/uchat/server.c.o.requires

CMakeFiles/uchat.dir/uchat/server.c.o.provides: CMakeFiles/uchat.dir/uchat/server.c.o.requires
	$(MAKE) -f CMakeFiles/uchat.dir/build.make CMakeFiles/uchat.dir/uchat/server.c.o.provides.build
.PHONY : CMakeFiles/uchat.dir/uchat/server.c.o.provides

CMakeFiles/uchat.dir/uchat/server.c.o.provides.build: CMakeFiles/uchat.dir/uchat/server.c.o


CMakeFiles/uchat.dir/uchat/main.c.o: CMakeFiles/uchat.dir/flags.make
CMakeFiles/uchat.dir/uchat/main.c.o: /home/ethan/Desktop/unsigned-chat/src/uchat/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ethan/Desktop/unsigned-chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/uchat.dir/uchat/main.c.o"
	/usr/bin/cc  $(C_DEFINES) -D__FILENAME__=main.c $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/uchat.dir/uchat/main.c.o   -c /home/ethan/Desktop/unsigned-chat/src/uchat/main.c

CMakeFiles/uchat.dir/uchat/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/uchat.dir/uchat/main.c.i"
	/usr/bin/cc  $(C_DEFINES) -D__FILENAME__=main.c $(C_INCLUDES) $(C_FLAGS) -E /home/ethan/Desktop/unsigned-chat/src/uchat/main.c > CMakeFiles/uchat.dir/uchat/main.c.i

CMakeFiles/uchat.dir/uchat/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/uchat.dir/uchat/main.c.s"
	/usr/bin/cc  $(C_DEFINES) -D__FILENAME__=main.c $(C_INCLUDES) $(C_FLAGS) -S /home/ethan/Desktop/unsigned-chat/src/uchat/main.c -o CMakeFiles/uchat.dir/uchat/main.c.s

CMakeFiles/uchat.dir/uchat/main.c.o.requires:

.PHONY : CMakeFiles/uchat.dir/uchat/main.c.o.requires

CMakeFiles/uchat.dir/uchat/main.c.o.provides: CMakeFiles/uchat.dir/uchat/main.c.o.requires
	$(MAKE) -f CMakeFiles/uchat.dir/build.make CMakeFiles/uchat.dir/uchat/main.c.o.provides.build
.PHONY : CMakeFiles/uchat.dir/uchat/main.c.o.provides

CMakeFiles/uchat.dir/uchat/main.c.o.provides.build: CMakeFiles/uchat.dir/uchat/main.c.o


# Object files for target uchat
uchat_OBJECTS = \
"CMakeFiles/uchat.dir/uchat/client.c.o" \
"CMakeFiles/uchat.dir/uchat/server.c.o" \
"CMakeFiles/uchat.dir/uchat/main.c.o"

# External object files for target uchat
uchat_EXTERNAL_OBJECTS =

uchat: CMakeFiles/uchat.dir/uchat/client.c.o
uchat: CMakeFiles/uchat.dir/uchat/server.c.o
uchat: CMakeFiles/uchat.dir/uchat/main.c.o
uchat: CMakeFiles/uchat.dir/build.make
uchat: CMakeFiles/uchat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ethan/Desktop/unsigned-chat/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable uchat"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/uchat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/uchat.dir/build: uchat

.PHONY : CMakeFiles/uchat.dir/build

CMakeFiles/uchat.dir/requires: CMakeFiles/uchat.dir/uchat/client.c.o.requires
CMakeFiles/uchat.dir/requires: CMakeFiles/uchat.dir/uchat/server.c.o.requires
CMakeFiles/uchat.dir/requires: CMakeFiles/uchat.dir/uchat/main.c.o.requires

.PHONY : CMakeFiles/uchat.dir/requires

CMakeFiles/uchat.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/uchat.dir/cmake_clean.cmake
.PHONY : CMakeFiles/uchat.dir/clean

CMakeFiles/uchat.dir/depend:
	cd /home/ethan/Desktop/unsigned-chat/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ethan/Desktop/unsigned-chat/src /home/ethan/Desktop/unsigned-chat/src /home/ethan/Desktop/unsigned-chat/build /home/ethan/Desktop/unsigned-chat/build /home/ethan/Desktop/unsigned-chat/build/CMakeFiles/uchat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/uchat.dir/depend
