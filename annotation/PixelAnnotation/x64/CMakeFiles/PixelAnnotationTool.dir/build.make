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
CMAKE_SOURCE_DIR = /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64

# Include any dependencies generated for this target.
include CMakeFiles/PixelAnnotationTool.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/PixelAnnotationTool.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PixelAnnotationTool.dir/flags.make

ui_main_window.h: ../src/main_window.ui
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ui_main_window.h"
	/home/tenghui/PycharmProjects/mag/annotation/Qt5.9.1/5.9.1/gcc_64/bin/uic -o /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64/ui_main_window.h /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/main_window.ui

CMakeFiles/PixelAnnotationTool.dir/src/main_window.cpp.o: CMakeFiles/PixelAnnotationTool.dir/flags.make
CMakeFiles/PixelAnnotationTool.dir/src/main_window.cpp.o: ../src/main_window.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/PixelAnnotationTool.dir/src/main_window.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PixelAnnotationTool.dir/src/main_window.cpp.o -c /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/main_window.cpp

CMakeFiles/PixelAnnotationTool.dir/src/main_window.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PixelAnnotationTool.dir/src/main_window.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/main_window.cpp > CMakeFiles/PixelAnnotationTool.dir/src/main_window.cpp.i

CMakeFiles/PixelAnnotationTool.dir/src/main_window.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PixelAnnotationTool.dir/src/main_window.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/main_window.cpp -o CMakeFiles/PixelAnnotationTool.dir/src/main_window.cpp.s

CMakeFiles/PixelAnnotationTool.dir/src/main_window.cpp.o.requires:

.PHONY : CMakeFiles/PixelAnnotationTool.dir/src/main_window.cpp.o.requires

CMakeFiles/PixelAnnotationTool.dir/src/main_window.cpp.o.provides: CMakeFiles/PixelAnnotationTool.dir/src/main_window.cpp.o.requires
	$(MAKE) -f CMakeFiles/PixelAnnotationTool.dir/build.make CMakeFiles/PixelAnnotationTool.dir/src/main_window.cpp.o.provides.build
.PHONY : CMakeFiles/PixelAnnotationTool.dir/src/main_window.cpp.o.provides

CMakeFiles/PixelAnnotationTool.dir/src/main_window.cpp.o.provides.build: CMakeFiles/PixelAnnotationTool.dir/src/main_window.cpp.o


CMakeFiles/PixelAnnotationTool.dir/src/about_dialog.cpp.o: CMakeFiles/PixelAnnotationTool.dir/flags.make
CMakeFiles/PixelAnnotationTool.dir/src/about_dialog.cpp.o: ../src/about_dialog.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/PixelAnnotationTool.dir/src/about_dialog.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PixelAnnotationTool.dir/src/about_dialog.cpp.o -c /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/about_dialog.cpp

CMakeFiles/PixelAnnotationTool.dir/src/about_dialog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PixelAnnotationTool.dir/src/about_dialog.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/about_dialog.cpp > CMakeFiles/PixelAnnotationTool.dir/src/about_dialog.cpp.i

CMakeFiles/PixelAnnotationTool.dir/src/about_dialog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PixelAnnotationTool.dir/src/about_dialog.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/about_dialog.cpp -o CMakeFiles/PixelAnnotationTool.dir/src/about_dialog.cpp.s

CMakeFiles/PixelAnnotationTool.dir/src/about_dialog.cpp.o.requires:

.PHONY : CMakeFiles/PixelAnnotationTool.dir/src/about_dialog.cpp.o.requires

CMakeFiles/PixelAnnotationTool.dir/src/about_dialog.cpp.o.provides: CMakeFiles/PixelAnnotationTool.dir/src/about_dialog.cpp.o.requires
	$(MAKE) -f CMakeFiles/PixelAnnotationTool.dir/build.make CMakeFiles/PixelAnnotationTool.dir/src/about_dialog.cpp.o.provides.build
.PHONY : CMakeFiles/PixelAnnotationTool.dir/src/about_dialog.cpp.o.provides

CMakeFiles/PixelAnnotationTool.dir/src/about_dialog.cpp.o.provides.build: CMakeFiles/PixelAnnotationTool.dir/src/about_dialog.cpp.o


CMakeFiles/PixelAnnotationTool.dir/src/labels.cpp.o: CMakeFiles/PixelAnnotationTool.dir/flags.make
CMakeFiles/PixelAnnotationTool.dir/src/labels.cpp.o: ../src/labels.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/PixelAnnotationTool.dir/src/labels.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PixelAnnotationTool.dir/src/labels.cpp.o -c /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/labels.cpp

CMakeFiles/PixelAnnotationTool.dir/src/labels.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PixelAnnotationTool.dir/src/labels.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/labels.cpp > CMakeFiles/PixelAnnotationTool.dir/src/labels.cpp.i

CMakeFiles/PixelAnnotationTool.dir/src/labels.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PixelAnnotationTool.dir/src/labels.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/labels.cpp -o CMakeFiles/PixelAnnotationTool.dir/src/labels.cpp.s

CMakeFiles/PixelAnnotationTool.dir/src/labels.cpp.o.requires:

.PHONY : CMakeFiles/PixelAnnotationTool.dir/src/labels.cpp.o.requires

CMakeFiles/PixelAnnotationTool.dir/src/labels.cpp.o.provides: CMakeFiles/PixelAnnotationTool.dir/src/labels.cpp.o.requires
	$(MAKE) -f CMakeFiles/PixelAnnotationTool.dir/build.make CMakeFiles/PixelAnnotationTool.dir/src/labels.cpp.o.provides.build
.PHONY : CMakeFiles/PixelAnnotationTool.dir/src/labels.cpp.o.provides

CMakeFiles/PixelAnnotationTool.dir/src/labels.cpp.o.provides.build: CMakeFiles/PixelAnnotationTool.dir/src/labels.cpp.o


CMakeFiles/PixelAnnotationTool.dir/src/utils.cpp.o: CMakeFiles/PixelAnnotationTool.dir/flags.make
CMakeFiles/PixelAnnotationTool.dir/src/utils.cpp.o: ../src/utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/PixelAnnotationTool.dir/src/utils.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PixelAnnotationTool.dir/src/utils.cpp.o -c /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/utils.cpp

CMakeFiles/PixelAnnotationTool.dir/src/utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PixelAnnotationTool.dir/src/utils.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/utils.cpp > CMakeFiles/PixelAnnotationTool.dir/src/utils.cpp.i

CMakeFiles/PixelAnnotationTool.dir/src/utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PixelAnnotationTool.dir/src/utils.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/utils.cpp -o CMakeFiles/PixelAnnotationTool.dir/src/utils.cpp.s

CMakeFiles/PixelAnnotationTool.dir/src/utils.cpp.o.requires:

.PHONY : CMakeFiles/PixelAnnotationTool.dir/src/utils.cpp.o.requires

CMakeFiles/PixelAnnotationTool.dir/src/utils.cpp.o.provides: CMakeFiles/PixelAnnotationTool.dir/src/utils.cpp.o.requires
	$(MAKE) -f CMakeFiles/PixelAnnotationTool.dir/build.make CMakeFiles/PixelAnnotationTool.dir/src/utils.cpp.o.provides.build
.PHONY : CMakeFiles/PixelAnnotationTool.dir/src/utils.cpp.o.provides

CMakeFiles/PixelAnnotationTool.dir/src/utils.cpp.o.provides.build: CMakeFiles/PixelAnnotationTool.dir/src/utils.cpp.o


CMakeFiles/PixelAnnotationTool.dir/src/image_mask.cpp.o: CMakeFiles/PixelAnnotationTool.dir/flags.make
CMakeFiles/PixelAnnotationTool.dir/src/image_mask.cpp.o: ../src/image_mask.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/PixelAnnotationTool.dir/src/image_mask.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PixelAnnotationTool.dir/src/image_mask.cpp.o -c /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/image_mask.cpp

CMakeFiles/PixelAnnotationTool.dir/src/image_mask.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PixelAnnotationTool.dir/src/image_mask.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/image_mask.cpp > CMakeFiles/PixelAnnotationTool.dir/src/image_mask.cpp.i

CMakeFiles/PixelAnnotationTool.dir/src/image_mask.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PixelAnnotationTool.dir/src/image_mask.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/image_mask.cpp -o CMakeFiles/PixelAnnotationTool.dir/src/image_mask.cpp.s

CMakeFiles/PixelAnnotationTool.dir/src/image_mask.cpp.o.requires:

.PHONY : CMakeFiles/PixelAnnotationTool.dir/src/image_mask.cpp.o.requires

CMakeFiles/PixelAnnotationTool.dir/src/image_mask.cpp.o.provides: CMakeFiles/PixelAnnotationTool.dir/src/image_mask.cpp.o.requires
	$(MAKE) -f CMakeFiles/PixelAnnotationTool.dir/build.make CMakeFiles/PixelAnnotationTool.dir/src/image_mask.cpp.o.provides.build
.PHONY : CMakeFiles/PixelAnnotationTool.dir/src/image_mask.cpp.o.provides

CMakeFiles/PixelAnnotationTool.dir/src/image_mask.cpp.o.provides.build: CMakeFiles/PixelAnnotationTool.dir/src/image_mask.cpp.o


CMakeFiles/PixelAnnotationTool.dir/src/image_canvas.cpp.o: CMakeFiles/PixelAnnotationTool.dir/flags.make
CMakeFiles/PixelAnnotationTool.dir/src/image_canvas.cpp.o: ../src/image_canvas.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/PixelAnnotationTool.dir/src/image_canvas.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PixelAnnotationTool.dir/src/image_canvas.cpp.o -c /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/image_canvas.cpp

CMakeFiles/PixelAnnotationTool.dir/src/image_canvas.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PixelAnnotationTool.dir/src/image_canvas.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/image_canvas.cpp > CMakeFiles/PixelAnnotationTool.dir/src/image_canvas.cpp.i

CMakeFiles/PixelAnnotationTool.dir/src/image_canvas.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PixelAnnotationTool.dir/src/image_canvas.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/image_canvas.cpp -o CMakeFiles/PixelAnnotationTool.dir/src/image_canvas.cpp.s

CMakeFiles/PixelAnnotationTool.dir/src/image_canvas.cpp.o.requires:

.PHONY : CMakeFiles/PixelAnnotationTool.dir/src/image_canvas.cpp.o.requires

CMakeFiles/PixelAnnotationTool.dir/src/image_canvas.cpp.o.provides: CMakeFiles/PixelAnnotationTool.dir/src/image_canvas.cpp.o.requires
	$(MAKE) -f CMakeFiles/PixelAnnotationTool.dir/build.make CMakeFiles/PixelAnnotationTool.dir/src/image_canvas.cpp.o.provides.build
.PHONY : CMakeFiles/PixelAnnotationTool.dir/src/image_canvas.cpp.o.provides

CMakeFiles/PixelAnnotationTool.dir/src/image_canvas.cpp.o.provides.build: CMakeFiles/PixelAnnotationTool.dir/src/image_canvas.cpp.o


CMakeFiles/PixelAnnotationTool.dir/src/label_widget.cpp.o: CMakeFiles/PixelAnnotationTool.dir/flags.make
CMakeFiles/PixelAnnotationTool.dir/src/label_widget.cpp.o: ../src/label_widget.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/PixelAnnotationTool.dir/src/label_widget.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PixelAnnotationTool.dir/src/label_widget.cpp.o -c /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/label_widget.cpp

CMakeFiles/PixelAnnotationTool.dir/src/label_widget.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PixelAnnotationTool.dir/src/label_widget.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/label_widget.cpp > CMakeFiles/PixelAnnotationTool.dir/src/label_widget.cpp.i

CMakeFiles/PixelAnnotationTool.dir/src/label_widget.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PixelAnnotationTool.dir/src/label_widget.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/label_widget.cpp -o CMakeFiles/PixelAnnotationTool.dir/src/label_widget.cpp.s

CMakeFiles/PixelAnnotationTool.dir/src/label_widget.cpp.o.requires:

.PHONY : CMakeFiles/PixelAnnotationTool.dir/src/label_widget.cpp.o.requires

CMakeFiles/PixelAnnotationTool.dir/src/label_widget.cpp.o.provides: CMakeFiles/PixelAnnotationTool.dir/src/label_widget.cpp.o.requires
	$(MAKE) -f CMakeFiles/PixelAnnotationTool.dir/build.make CMakeFiles/PixelAnnotationTool.dir/src/label_widget.cpp.o.provides.build
.PHONY : CMakeFiles/PixelAnnotationTool.dir/src/label_widget.cpp.o.provides

CMakeFiles/PixelAnnotationTool.dir/src/label_widget.cpp.o.provides.build: CMakeFiles/PixelAnnotationTool.dir/src/label_widget.cpp.o


CMakeFiles/PixelAnnotationTool.dir/src/main.cpp.o: CMakeFiles/PixelAnnotationTool.dir/flags.make
CMakeFiles/PixelAnnotationTool.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/PixelAnnotationTool.dir/src/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PixelAnnotationTool.dir/src/main.cpp.o -c /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/main.cpp

CMakeFiles/PixelAnnotationTool.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PixelAnnotationTool.dir/src/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/main.cpp > CMakeFiles/PixelAnnotationTool.dir/src/main.cpp.i

CMakeFiles/PixelAnnotationTool.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PixelAnnotationTool.dir/src/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/src/main.cpp -o CMakeFiles/PixelAnnotationTool.dir/src/main.cpp.s

CMakeFiles/PixelAnnotationTool.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/PixelAnnotationTool.dir/src/main.cpp.o.requires

CMakeFiles/PixelAnnotationTool.dir/src/main.cpp.o.provides: CMakeFiles/PixelAnnotationTool.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/PixelAnnotationTool.dir/build.make CMakeFiles/PixelAnnotationTool.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/PixelAnnotationTool.dir/src/main.cpp.o.provides

CMakeFiles/PixelAnnotationTool.dir/src/main.cpp.o.provides.build: CMakeFiles/PixelAnnotationTool.dir/src/main.cpp.o


CMakeFiles/PixelAnnotationTool.dir/PixelAnnotationTool_automoc.cpp.o: CMakeFiles/PixelAnnotationTool.dir/flags.make
CMakeFiles/PixelAnnotationTool.dir/PixelAnnotationTool_automoc.cpp.o: PixelAnnotationTool_automoc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/PixelAnnotationTool.dir/PixelAnnotationTool_automoc.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PixelAnnotationTool.dir/PixelAnnotationTool_automoc.cpp.o -c /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64/PixelAnnotationTool_automoc.cpp

CMakeFiles/PixelAnnotationTool.dir/PixelAnnotationTool_automoc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PixelAnnotationTool.dir/PixelAnnotationTool_automoc.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64/PixelAnnotationTool_automoc.cpp > CMakeFiles/PixelAnnotationTool.dir/PixelAnnotationTool_automoc.cpp.i

CMakeFiles/PixelAnnotationTool.dir/PixelAnnotationTool_automoc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PixelAnnotationTool.dir/PixelAnnotationTool_automoc.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64/PixelAnnotationTool_automoc.cpp -o CMakeFiles/PixelAnnotationTool.dir/PixelAnnotationTool_automoc.cpp.s

CMakeFiles/PixelAnnotationTool.dir/PixelAnnotationTool_automoc.cpp.o.requires:

.PHONY : CMakeFiles/PixelAnnotationTool.dir/PixelAnnotationTool_automoc.cpp.o.requires

CMakeFiles/PixelAnnotationTool.dir/PixelAnnotationTool_automoc.cpp.o.provides: CMakeFiles/PixelAnnotationTool.dir/PixelAnnotationTool_automoc.cpp.o.requires
	$(MAKE) -f CMakeFiles/PixelAnnotationTool.dir/build.make CMakeFiles/PixelAnnotationTool.dir/PixelAnnotationTool_automoc.cpp.o.provides.build
.PHONY : CMakeFiles/PixelAnnotationTool.dir/PixelAnnotationTool_automoc.cpp.o.provides

CMakeFiles/PixelAnnotationTool.dir/PixelAnnotationTool_automoc.cpp.o.provides.build: CMakeFiles/PixelAnnotationTool.dir/PixelAnnotationTool_automoc.cpp.o


# Object files for target PixelAnnotationTool
PixelAnnotationTool_OBJECTS = \
"CMakeFiles/PixelAnnotationTool.dir/src/main_window.cpp.o" \
"CMakeFiles/PixelAnnotationTool.dir/src/about_dialog.cpp.o" \
"CMakeFiles/PixelAnnotationTool.dir/src/labels.cpp.o" \
"CMakeFiles/PixelAnnotationTool.dir/src/utils.cpp.o" \
"CMakeFiles/PixelAnnotationTool.dir/src/image_mask.cpp.o" \
"CMakeFiles/PixelAnnotationTool.dir/src/image_canvas.cpp.o" \
"CMakeFiles/PixelAnnotationTool.dir/src/label_widget.cpp.o" \
"CMakeFiles/PixelAnnotationTool.dir/src/main.cpp.o" \
"CMakeFiles/PixelAnnotationTool.dir/PixelAnnotationTool_automoc.cpp.o"

# External object files for target PixelAnnotationTool
PixelAnnotationTool_EXTERNAL_OBJECTS =

PixelAnnotationTool: CMakeFiles/PixelAnnotationTool.dir/src/main_window.cpp.o
PixelAnnotationTool: CMakeFiles/PixelAnnotationTool.dir/src/about_dialog.cpp.o
PixelAnnotationTool: CMakeFiles/PixelAnnotationTool.dir/src/labels.cpp.o
PixelAnnotationTool: CMakeFiles/PixelAnnotationTool.dir/src/utils.cpp.o
PixelAnnotationTool: CMakeFiles/PixelAnnotationTool.dir/src/image_mask.cpp.o
PixelAnnotationTool: CMakeFiles/PixelAnnotationTool.dir/src/image_canvas.cpp.o
PixelAnnotationTool: CMakeFiles/PixelAnnotationTool.dir/src/label_widget.cpp.o
PixelAnnotationTool: CMakeFiles/PixelAnnotationTool.dir/src/main.cpp.o
PixelAnnotationTool: CMakeFiles/PixelAnnotationTool.dir/PixelAnnotationTool_automoc.cpp.o
PixelAnnotationTool: CMakeFiles/PixelAnnotationTool.dir/build.make
PixelAnnotationTool: /home/tenghui/PycharmProjects/mag/annotation/Qt5.9.1/5.9.1/gcc_64/lib/libQt5Widgets.so.5.9.1
PixelAnnotationTool: /usr/local/lib/libopencv_stitching.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_superres.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_videostab.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_aruco.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_bgsegm.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_bioinspired.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_ccalib.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_dpm.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_face.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_freetype.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_fuzzy.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_img_hash.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_line_descriptor.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_optflow.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_reg.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_rgbd.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_saliency.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_stereo.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_structured_light.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_surface_matching.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_tracking.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_xfeatures2d.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_ximgproc.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_xobjdetect.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_xphoto.so.3.3.0
PixelAnnotationTool: /home/tenghui/PycharmProjects/mag/annotation/Qt5.9.1/5.9.1/gcc_64/lib/libQt5Gui.so.5.9.1
PixelAnnotationTool: /home/tenghui/PycharmProjects/mag/annotation/Qt5.9.1/5.9.1/gcc_64/lib/libQt5Core.so.5.9.1
PixelAnnotationTool: /usr/local/lib/libopencv_shape.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_photo.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_calib3d.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_phase_unwrapping.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_dnn.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_video.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_datasets.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_plot.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_text.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_features2d.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_flann.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_highgui.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_ml.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_videoio.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_imgcodecs.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_objdetect.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_imgproc.so.3.3.0
PixelAnnotationTool: /usr/local/lib/libopencv_core.so.3.3.0
PixelAnnotationTool: CMakeFiles/PixelAnnotationTool.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable PixelAnnotationTool"
	cmake -P /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64/git_version.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PixelAnnotationTool.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PixelAnnotationTool.dir/build: PixelAnnotationTool

.PHONY : CMakeFiles/PixelAnnotationTool.dir/build

CMakeFiles/PixelAnnotationTool.dir/requires: CMakeFiles/PixelAnnotationTool.dir/src/main_window.cpp.o.requires
CMakeFiles/PixelAnnotationTool.dir/requires: CMakeFiles/PixelAnnotationTool.dir/src/about_dialog.cpp.o.requires
CMakeFiles/PixelAnnotationTool.dir/requires: CMakeFiles/PixelAnnotationTool.dir/src/labels.cpp.o.requires
CMakeFiles/PixelAnnotationTool.dir/requires: CMakeFiles/PixelAnnotationTool.dir/src/utils.cpp.o.requires
CMakeFiles/PixelAnnotationTool.dir/requires: CMakeFiles/PixelAnnotationTool.dir/src/image_mask.cpp.o.requires
CMakeFiles/PixelAnnotationTool.dir/requires: CMakeFiles/PixelAnnotationTool.dir/src/image_canvas.cpp.o.requires
CMakeFiles/PixelAnnotationTool.dir/requires: CMakeFiles/PixelAnnotationTool.dir/src/label_widget.cpp.o.requires
CMakeFiles/PixelAnnotationTool.dir/requires: CMakeFiles/PixelAnnotationTool.dir/src/main.cpp.o.requires
CMakeFiles/PixelAnnotationTool.dir/requires: CMakeFiles/PixelAnnotationTool.dir/PixelAnnotationTool_automoc.cpp.o.requires

.PHONY : CMakeFiles/PixelAnnotationTool.dir/requires

CMakeFiles/PixelAnnotationTool.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PixelAnnotationTool.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PixelAnnotationTool.dir/clean

CMakeFiles/PixelAnnotationTool.dir/depend: ui_main_window.h
	cd /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64 /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64 /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64/CMakeFiles/PixelAnnotationTool.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PixelAnnotationTool.dir/depend
