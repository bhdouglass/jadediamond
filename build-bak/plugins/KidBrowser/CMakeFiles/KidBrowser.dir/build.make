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
include plugins/KidBrowser/CMakeFiles/KidBrowser.dir/depend.make

# Include the progress variables for this target.
include plugins/KidBrowser/CMakeFiles/KidBrowser.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/KidBrowser/CMakeFiles/KidBrowser.dir/flags.make

plugins/KidBrowser/CMakeFiles/KidBrowser.dir/plugin.cpp.o: plugins/KidBrowser/CMakeFiles/KidBrowser.dir/flags.make
plugins/KidBrowser/CMakeFiles/KidBrowser.dir/plugin.cpp.o: ../plugins/KidBrowser/plugin.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/brian/dev/ubuntu/apps/kidbrowser/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object plugins/KidBrowser/CMakeFiles/KidBrowser.dir/plugin.cpp.o"
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/KidBrowser && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/KidBrowser.dir/plugin.cpp.o -c /home/brian/dev/ubuntu/apps/kidbrowser/plugins/KidBrowser/plugin.cpp

plugins/KidBrowser/CMakeFiles/KidBrowser.dir/plugin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KidBrowser.dir/plugin.cpp.i"
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/KidBrowser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/brian/dev/ubuntu/apps/kidbrowser/plugins/KidBrowser/plugin.cpp > CMakeFiles/KidBrowser.dir/plugin.cpp.i

plugins/KidBrowser/CMakeFiles/KidBrowser.dir/plugin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KidBrowser.dir/plugin.cpp.s"
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/KidBrowser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/brian/dev/ubuntu/apps/kidbrowser/plugins/KidBrowser/plugin.cpp -o CMakeFiles/KidBrowser.dir/plugin.cpp.s

plugins/KidBrowser/CMakeFiles/KidBrowser.dir/plugin.cpp.o.requires:
.PHONY : plugins/KidBrowser/CMakeFiles/KidBrowser.dir/plugin.cpp.o.requires

plugins/KidBrowser/CMakeFiles/KidBrowser.dir/plugin.cpp.o.provides: plugins/KidBrowser/CMakeFiles/KidBrowser.dir/plugin.cpp.o.requires
	$(MAKE) -f plugins/KidBrowser/CMakeFiles/KidBrowser.dir/build.make plugins/KidBrowser/CMakeFiles/KidBrowser.dir/plugin.cpp.o.provides.build
.PHONY : plugins/KidBrowser/CMakeFiles/KidBrowser.dir/plugin.cpp.o.provides

plugins/KidBrowser/CMakeFiles/KidBrowser.dir/plugin.cpp.o.provides.build: plugins/KidBrowser/CMakeFiles/KidBrowser.dir/plugin.cpp.o

plugins/KidBrowser/CMakeFiles/KidBrowser.dir/kidbrowser.cpp.o: plugins/KidBrowser/CMakeFiles/KidBrowser.dir/flags.make
plugins/KidBrowser/CMakeFiles/KidBrowser.dir/kidbrowser.cpp.o: ../plugins/KidBrowser/kidbrowser.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/brian/dev/ubuntu/apps/kidbrowser/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object plugins/KidBrowser/CMakeFiles/KidBrowser.dir/kidbrowser.cpp.o"
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/KidBrowser && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/KidBrowser.dir/kidbrowser.cpp.o -c /home/brian/dev/ubuntu/apps/kidbrowser/plugins/KidBrowser/kidbrowser.cpp

plugins/KidBrowser/CMakeFiles/KidBrowser.dir/kidbrowser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KidBrowser.dir/kidbrowser.cpp.i"
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/KidBrowser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/brian/dev/ubuntu/apps/kidbrowser/plugins/KidBrowser/kidbrowser.cpp > CMakeFiles/KidBrowser.dir/kidbrowser.cpp.i

plugins/KidBrowser/CMakeFiles/KidBrowser.dir/kidbrowser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KidBrowser.dir/kidbrowser.cpp.s"
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/KidBrowser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/brian/dev/ubuntu/apps/kidbrowser/plugins/KidBrowser/kidbrowser.cpp -o CMakeFiles/KidBrowser.dir/kidbrowser.cpp.s

plugins/KidBrowser/CMakeFiles/KidBrowser.dir/kidbrowser.cpp.o.requires:
.PHONY : plugins/KidBrowser/CMakeFiles/KidBrowser.dir/kidbrowser.cpp.o.requires

plugins/KidBrowser/CMakeFiles/KidBrowser.dir/kidbrowser.cpp.o.provides: plugins/KidBrowser/CMakeFiles/KidBrowser.dir/kidbrowser.cpp.o.requires
	$(MAKE) -f plugins/KidBrowser/CMakeFiles/KidBrowser.dir/build.make plugins/KidBrowser/CMakeFiles/KidBrowser.dir/kidbrowser.cpp.o.provides.build
.PHONY : plugins/KidBrowser/CMakeFiles/KidBrowser.dir/kidbrowser.cpp.o.provides

plugins/KidBrowser/CMakeFiles/KidBrowser.dir/kidbrowser.cpp.o.provides.build: plugins/KidBrowser/CMakeFiles/KidBrowser.dir/kidbrowser.cpp.o

plugins/KidBrowser/CMakeFiles/KidBrowser.dir/KidBrowser_automoc.cpp.o: plugins/KidBrowser/CMakeFiles/KidBrowser.dir/flags.make
plugins/KidBrowser/CMakeFiles/KidBrowser.dir/KidBrowser_automoc.cpp.o: plugins/KidBrowser/KidBrowser_automoc.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/brian/dev/ubuntu/apps/kidbrowser/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object plugins/KidBrowser/CMakeFiles/KidBrowser.dir/KidBrowser_automoc.cpp.o"
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/KidBrowser && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/KidBrowser.dir/KidBrowser_automoc.cpp.o -c /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/KidBrowser/KidBrowser_automoc.cpp

plugins/KidBrowser/CMakeFiles/KidBrowser.dir/KidBrowser_automoc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/KidBrowser.dir/KidBrowser_automoc.cpp.i"
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/KidBrowser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/KidBrowser/KidBrowser_automoc.cpp > CMakeFiles/KidBrowser.dir/KidBrowser_automoc.cpp.i

plugins/KidBrowser/CMakeFiles/KidBrowser.dir/KidBrowser_automoc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/KidBrowser.dir/KidBrowser_automoc.cpp.s"
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/KidBrowser && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/KidBrowser/KidBrowser_automoc.cpp -o CMakeFiles/KidBrowser.dir/KidBrowser_automoc.cpp.s

plugins/KidBrowser/CMakeFiles/KidBrowser.dir/KidBrowser_automoc.cpp.o.requires:
.PHONY : plugins/KidBrowser/CMakeFiles/KidBrowser.dir/KidBrowser_automoc.cpp.o.requires

plugins/KidBrowser/CMakeFiles/KidBrowser.dir/KidBrowser_automoc.cpp.o.provides: plugins/KidBrowser/CMakeFiles/KidBrowser.dir/KidBrowser_automoc.cpp.o.requires
	$(MAKE) -f plugins/KidBrowser/CMakeFiles/KidBrowser.dir/build.make plugins/KidBrowser/CMakeFiles/KidBrowser.dir/KidBrowser_automoc.cpp.o.provides.build
.PHONY : plugins/KidBrowser/CMakeFiles/KidBrowser.dir/KidBrowser_automoc.cpp.o.provides

plugins/KidBrowser/CMakeFiles/KidBrowser.dir/KidBrowser_automoc.cpp.o.provides.build: plugins/KidBrowser/CMakeFiles/KidBrowser.dir/KidBrowser_automoc.cpp.o

# Object files for target KidBrowser
KidBrowser_OBJECTS = \
"CMakeFiles/KidBrowser.dir/plugin.cpp.o" \
"CMakeFiles/KidBrowser.dir/kidbrowser.cpp.o" \
"CMakeFiles/KidBrowser.dir/KidBrowser_automoc.cpp.o"

# External object files for target KidBrowser
KidBrowser_EXTERNAL_OBJECTS =

plugins/KidBrowser/KidBrowser/libKidBrowser.so: plugins/KidBrowser/CMakeFiles/KidBrowser.dir/plugin.cpp.o
plugins/KidBrowser/KidBrowser/libKidBrowser.so: plugins/KidBrowser/CMakeFiles/KidBrowser.dir/kidbrowser.cpp.o
plugins/KidBrowser/KidBrowser/libKidBrowser.so: plugins/KidBrowser/CMakeFiles/KidBrowser.dir/KidBrowser_automoc.cpp.o
plugins/KidBrowser/KidBrowser/libKidBrowser.so: plugins/KidBrowser/CMakeFiles/KidBrowser.dir/build.make
plugins/KidBrowser/KidBrowser/libKidBrowser.so: /usr/lib/x86_64-linux-gnu/libQt5Qml.so.5.4.1
plugins/KidBrowser/KidBrowser/libKidBrowser.so: /usr/lib/x86_64-linux-gnu/libQt5Quick.so.5.4.1
plugins/KidBrowser/KidBrowser/libKidBrowser.so: /usr/lib/x86_64-linux-gnu/libQt5DBus.so.5.4.1
plugins/KidBrowser/KidBrowser/libKidBrowser.so: /usr/lib/x86_64-linux-gnu/libQt5Sql.so.5.4.1
plugins/KidBrowser/KidBrowser/libKidBrowser.so: /usr/lib/x86_64-linux-gnu/libQt5Qml.so.5.4.1
plugins/KidBrowser/KidBrowser/libKidBrowser.so: /usr/lib/x86_64-linux-gnu/libQt5Network.so.5.4.1
plugins/KidBrowser/KidBrowser/libKidBrowser.so: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.4.1
plugins/KidBrowser/KidBrowser/libKidBrowser.so: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.4.1
plugins/KidBrowser/KidBrowser/libKidBrowser.so: plugins/KidBrowser/CMakeFiles/KidBrowser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module KidBrowser/libKidBrowser.so"
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/KidBrowser && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/KidBrowser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/KidBrowser/CMakeFiles/KidBrowser.dir/build: plugins/KidBrowser/KidBrowser/libKidBrowser.so
.PHONY : plugins/KidBrowser/CMakeFiles/KidBrowser.dir/build

plugins/KidBrowser/CMakeFiles/KidBrowser.dir/requires: plugins/KidBrowser/CMakeFiles/KidBrowser.dir/plugin.cpp.o.requires
plugins/KidBrowser/CMakeFiles/KidBrowser.dir/requires: plugins/KidBrowser/CMakeFiles/KidBrowser.dir/kidbrowser.cpp.o.requires
plugins/KidBrowser/CMakeFiles/KidBrowser.dir/requires: plugins/KidBrowser/CMakeFiles/KidBrowser.dir/KidBrowser_automoc.cpp.o.requires
.PHONY : plugins/KidBrowser/CMakeFiles/KidBrowser.dir/requires

plugins/KidBrowser/CMakeFiles/KidBrowser.dir/clean:
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/KidBrowser && $(CMAKE_COMMAND) -P CMakeFiles/KidBrowser.dir/cmake_clean.cmake
.PHONY : plugins/KidBrowser/CMakeFiles/KidBrowser.dir/clean

plugins/KidBrowser/CMakeFiles/KidBrowser.dir/depend:
	cd /home/brian/dev/ubuntu/apps/kidbrowser/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/brian/dev/ubuntu/apps/kidbrowser /home/brian/dev/ubuntu/apps/kidbrowser/plugins/KidBrowser /home/brian/dev/ubuntu/apps/kidbrowser/build /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/KidBrowser /home/brian/dev/ubuntu/apps/kidbrowser/build/plugins/KidBrowser/CMakeFiles/KidBrowser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/KidBrowser/CMakeFiles/KidBrowser.dir/depend
