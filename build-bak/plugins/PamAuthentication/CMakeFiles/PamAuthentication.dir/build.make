# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_SOURCE_DIR = /home/brian/dev/ubuntu/apps/kidbrowser

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/brian/dev/ubuntu/apps/kidbrowser/build

# Include any dependencies generated for this target.
include plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/depend.make

# Include the progress variables for this target.
include plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/flags.make

plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/plugin.cpp.o: plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/flags.make
plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/plugin.cpp.o: ../plugins/PamAuthentication/plugin.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/brian/dev/ubuntu/apps/kidbrowser/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/plugin.cpp.o"
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/PamAuthentication && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/PamAuthentication.dir/plugin.cpp.o -c /home/brian/dev/ubuntu/apps/kidbrowser/plugins/PamAuthentication/plugin.cpp

plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/plugin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PamAuthentication.dir/plugin.cpp.i"
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/PamAuthentication && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/brian/dev/ubuntu/apps/kidbrowser/plugins/PamAuthentication/plugin.cpp > CMakeFiles/PamAuthentication.dir/plugin.cpp.i

plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/plugin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PamAuthentication.dir/plugin.cpp.s"
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/PamAuthentication && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/brian/dev/ubuntu/apps/kidbrowser/plugins/PamAuthentication/plugin.cpp -o CMakeFiles/PamAuthentication.dir/plugin.cpp.s

plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/plugin.cpp.o.requires:
.PHONY : plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/plugin.cpp.o.requires

plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/plugin.cpp.o.provides: plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/plugin.cpp.o.requires
	$(MAKE) -f plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/build.make plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/plugin.cpp.o.provides.build
.PHONY : plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/plugin.cpp.o.provides

plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/plugin.cpp.o.provides.build: plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/plugin.cpp.o

plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/pamauthentication.cpp.o: plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/flags.make
plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/pamauthentication.cpp.o: ../plugins/PamAuthentication/pamauthentication.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/brian/dev/ubuntu/apps/kidbrowser/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/pamauthentication.cpp.o"
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/PamAuthentication && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/PamAuthentication.dir/pamauthentication.cpp.o -c /home/brian/dev/ubuntu/apps/kidbrowser/plugins/PamAuthentication/pamauthentication.cpp

plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/pamauthentication.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PamAuthentication.dir/pamauthentication.cpp.i"
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/PamAuthentication && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/brian/dev/ubuntu/apps/kidbrowser/plugins/PamAuthentication/pamauthentication.cpp > CMakeFiles/PamAuthentication.dir/pamauthentication.cpp.i

plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/pamauthentication.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PamAuthentication.dir/pamauthentication.cpp.s"
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/PamAuthentication && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/brian/dev/ubuntu/apps/kidbrowser/plugins/PamAuthentication/pamauthentication.cpp -o CMakeFiles/PamAuthentication.dir/pamauthentication.cpp.s

plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/pamauthentication.cpp.o.requires:
.PHONY : plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/pamauthentication.cpp.o.requires

plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/pamauthentication.cpp.o.provides: plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/pamauthentication.cpp.o.requires
	$(MAKE) -f plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/build.make plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/pamauthentication.cpp.o.provides.build
.PHONY : plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/pamauthentication.cpp.o.provides

plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/pamauthentication.cpp.o.provides.build: plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/pamauthentication.cpp.o

plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/PamAuthentication_automoc.cpp.o: plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/flags.make
plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/PamAuthentication_automoc.cpp.o: plugins/PamAuthentication/PamAuthentication_automoc.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/brian/dev/ubuntu/apps/kidbrowser/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/PamAuthentication_automoc.cpp.o"
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/PamAuthentication && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/PamAuthentication.dir/PamAuthentication_automoc.cpp.o -c /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/PamAuthentication/PamAuthentication_automoc.cpp

plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/PamAuthentication_automoc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PamAuthentication.dir/PamAuthentication_automoc.cpp.i"
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/PamAuthentication && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/PamAuthentication/PamAuthentication_automoc.cpp > CMakeFiles/PamAuthentication.dir/PamAuthentication_automoc.cpp.i

plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/PamAuthentication_automoc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PamAuthentication.dir/PamAuthentication_automoc.cpp.s"
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/PamAuthentication && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/PamAuthentication/PamAuthentication_automoc.cpp -o CMakeFiles/PamAuthentication.dir/PamAuthentication_automoc.cpp.s

plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/PamAuthentication_automoc.cpp.o.requires:
.PHONY : plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/PamAuthentication_automoc.cpp.o.requires

plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/PamAuthentication_automoc.cpp.o.provides: plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/PamAuthentication_automoc.cpp.o.requires
	$(MAKE) -f plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/build.make plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/PamAuthentication_automoc.cpp.o.provides.build
.PHONY : plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/PamAuthentication_automoc.cpp.o.provides

plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/PamAuthentication_automoc.cpp.o.provides.build: plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/PamAuthentication_automoc.cpp.o

# Object files for target PamAuthentication
PamAuthentication_OBJECTS = \
"CMakeFiles/PamAuthentication.dir/plugin.cpp.o" \
"CMakeFiles/PamAuthentication.dir/pamauthentication.cpp.o" \
"CMakeFiles/PamAuthentication.dir/PamAuthentication_automoc.cpp.o"

# External object files for target PamAuthentication
PamAuthentication_EXTERNAL_OBJECTS =

plugins/PamAuthentication/PamAuthentication/libPamAuthentication.so: plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/plugin.cpp.o
plugins/PamAuthentication/PamAuthentication/libPamAuthentication.so: plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/pamauthentication.cpp.o
plugins/PamAuthentication/PamAuthentication/libPamAuthentication.so: plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/PamAuthentication_automoc.cpp.o
plugins/PamAuthentication/PamAuthentication/libPamAuthentication.so: plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/build.make
plugins/PamAuthentication/PamAuthentication/libPamAuthentication.so: /usr/lib/x86_64-linux-gnu/libQt5Qml.so.5.4.1
plugins/PamAuthentication/PamAuthentication/libPamAuthentication.so: /usr/lib/x86_64-linux-gnu/libQt5Quick.so.5.4.1
plugins/PamAuthentication/PamAuthentication/libPamAuthentication.so: /usr/lib/x86_64-linux-gnu/libQt5DBus.so.5.4.1
plugins/PamAuthentication/PamAuthentication/libPamAuthentication.so: /usr/lib/x86_64-linux-gnu/libQt5Sql.so.5.4.1
plugins/PamAuthentication/PamAuthentication/libPamAuthentication.so: /usr/lib/x86_64-linux-gnu/libQt5Qml.so.5.4.1
plugins/PamAuthentication/PamAuthentication/libPamAuthentication.so: /usr/lib/x86_64-linux-gnu/libQt5Network.so.5.4.1
plugins/PamAuthentication/PamAuthentication/libPamAuthentication.so: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.4.1
plugins/PamAuthentication/PamAuthentication/libPamAuthentication.so: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.4.1
plugins/PamAuthentication/PamAuthentication/libPamAuthentication.so: plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module PamAuthentication/libPamAuthentication.so"
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/PamAuthentication && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PamAuthentication.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/build: plugins/PamAuthentication/PamAuthentication/libPamAuthentication.so
.PHONY : plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/build

plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/requires: plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/plugin.cpp.o.requires
plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/requires: plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/pamauthentication.cpp.o.requires
plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/requires: plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/PamAuthentication_automoc.cpp.o.requires
.PHONY : plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/requires

plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/clean:
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/PamAuthentication && $(CMAKE_COMMAND) -P CMakeFiles/PamAuthentication.dir/cmake_clean.cmake
.PHONY : plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/clean

plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/depend:
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/brian/dev/ubuntu/apps/kidbrowser /home/brian/dev/ubuntu/apps/kidbrowser/plugins/PamAuthentication /home/brian/dev/ubuntu/apps/kidbrowser/build /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/PamAuthentication /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/PamAuthentication/CMakeFiles/PamAuthentication.dir/depend
