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

# Utility rule file for make_zip.

# Include the progress variables for this target.
include CMakeFiles/make_zip.dir/progress.make

CMakeFiles/make_zip:
	echo ===\ make_zip\ ===
	/usr/bin/cmake -E rename Application-x86_64.AppImage PixelAnnotationTool_x86_64_v1.3.0.AppImage

make_zip: CMakeFiles/make_zip
make_zip: CMakeFiles/make_zip.dir/build.make

.PHONY : make_zip

# Rule to build all files generated by this target.
CMakeFiles/make_zip.dir/build: make_zip

.PHONY : CMakeFiles/make_zip.dir/build

CMakeFiles/make_zip.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/make_zip.dir/cmake_clean.cmake
.PHONY : CMakeFiles/make_zip.dir/clean

CMakeFiles/make_zip.dir/depend:
	cd /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64 /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64 /home/tenghui/PycharmProjects/mag/annotation/PixelAnnotation/x64/CMakeFiles/make_zip.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/make_zip.dir/depend

