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

# Utility rule file for copy_pat.

# Include the progress variables for this target.
include CMakeFiles/copy_pat.dir/progress.make

CMakeFiles/copy_pat: PixelAnnotationTool
	echo ===\ copy_pat\ ===
	/usr/bin/cmake -E copy /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64/PixelAnnotationTool /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64/PixelAnnotationTool_x86_64_v1.3.0/PixelAnnotationTool

copy_pat: CMakeFiles/copy_pat
copy_pat: CMakeFiles/copy_pat.dir/build.make

.PHONY : copy_pat

# Rule to build all files generated by this target.
CMakeFiles/copy_pat.dir/build: copy_pat

.PHONY : CMakeFiles/copy_pat.dir/build

CMakeFiles/copy_pat.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/copy_pat.dir/cmake_clean.cmake
.PHONY : CMakeFiles/copy_pat.dir/clean

CMakeFiles/copy_pat.dir/depend:
	cd /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64 /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64 /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64/CMakeFiles/copy_pat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/copy_pat.dir/depend

