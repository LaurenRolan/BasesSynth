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
CMAKE_SOURCE_DIR = /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/build

# Include any dependencies generated for this target.
include CMakeFiles/rubik.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/rubik.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rubik.dir/flags.make

CMakeFiles/rubik.dir/rubik/main.cpp.o: CMakeFiles/rubik.dir/flags.make
CMakeFiles/rubik.dir/rubik/main.cpp.o: ../rubik/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rubik.dir/rubik/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rubik.dir/rubik/main.cpp.o -c /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/rubik/main.cpp

CMakeFiles/rubik.dir/rubik/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rubik.dir/rubik/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/rubik/main.cpp > CMakeFiles/rubik.dir/rubik/main.cpp.i

CMakeFiles/rubik.dir/rubik/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rubik.dir/rubik/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/rubik/main.cpp -o CMakeFiles/rubik.dir/rubik/main.cpp.s

CMakeFiles/rubik.dir/rubik/main.cpp.o.requires:

.PHONY : CMakeFiles/rubik.dir/rubik/main.cpp.o.requires

CMakeFiles/rubik.dir/rubik/main.cpp.o.provides: CMakeFiles/rubik.dir/rubik/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/rubik.dir/build.make CMakeFiles/rubik.dir/rubik/main.cpp.o.provides.build
.PHONY : CMakeFiles/rubik.dir/rubik/main.cpp.o.provides

CMakeFiles/rubik.dir/rubik/main.cpp.o.provides.build: CMakeFiles/rubik.dir/rubik/main.cpp.o


CMakeFiles/rubik.dir/rubik/RubikApplication.cpp.o: CMakeFiles/rubik.dir/flags.make
CMakeFiles/rubik.dir/rubik/RubikApplication.cpp.o: ../rubik/RubikApplication.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/rubik.dir/rubik/RubikApplication.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rubik.dir/rubik/RubikApplication.cpp.o -c /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/rubik/RubikApplication.cpp

CMakeFiles/rubik.dir/rubik/RubikApplication.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rubik.dir/rubik/RubikApplication.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/rubik/RubikApplication.cpp > CMakeFiles/rubik.dir/rubik/RubikApplication.cpp.i

CMakeFiles/rubik.dir/rubik/RubikApplication.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rubik.dir/rubik/RubikApplication.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/rubik/RubikApplication.cpp -o CMakeFiles/rubik.dir/rubik/RubikApplication.cpp.s

CMakeFiles/rubik.dir/rubik/RubikApplication.cpp.o.requires:

.PHONY : CMakeFiles/rubik.dir/rubik/RubikApplication.cpp.o.requires

CMakeFiles/rubik.dir/rubik/RubikApplication.cpp.o.provides: CMakeFiles/rubik.dir/rubik/RubikApplication.cpp.o.requires
	$(MAKE) -f CMakeFiles/rubik.dir/build.make CMakeFiles/rubik.dir/rubik/RubikApplication.cpp.o.provides.build
.PHONY : CMakeFiles/rubik.dir/rubik/RubikApplication.cpp.o.provides

CMakeFiles/rubik.dir/rubik/RubikApplication.cpp.o.provides.build: CMakeFiles/rubik.dir/rubik/RubikApplication.cpp.o


CMakeFiles/rubik.dir/rubik/RubikRenderer.cpp.o: CMakeFiles/rubik.dir/flags.make
CMakeFiles/rubik.dir/rubik/RubikRenderer.cpp.o: ../rubik/RubikRenderer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/rubik.dir/rubik/RubikRenderer.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rubik.dir/rubik/RubikRenderer.cpp.o -c /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/rubik/RubikRenderer.cpp

CMakeFiles/rubik.dir/rubik/RubikRenderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rubik.dir/rubik/RubikRenderer.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/rubik/RubikRenderer.cpp > CMakeFiles/rubik.dir/rubik/RubikRenderer.cpp.i

CMakeFiles/rubik.dir/rubik/RubikRenderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rubik.dir/rubik/RubikRenderer.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/rubik/RubikRenderer.cpp -o CMakeFiles/rubik.dir/rubik/RubikRenderer.cpp.s

CMakeFiles/rubik.dir/rubik/RubikRenderer.cpp.o.requires:

.PHONY : CMakeFiles/rubik.dir/rubik/RubikRenderer.cpp.o.requires

CMakeFiles/rubik.dir/rubik/RubikRenderer.cpp.o.provides: CMakeFiles/rubik.dir/rubik/RubikRenderer.cpp.o.requires
	$(MAKE) -f CMakeFiles/rubik.dir/build.make CMakeFiles/rubik.dir/rubik/RubikRenderer.cpp.o.provides.build
.PHONY : CMakeFiles/rubik.dir/rubik/RubikRenderer.cpp.o.provides

CMakeFiles/rubik.dir/rubik/RubikRenderer.cpp.o.provides.build: CMakeFiles/rubik.dir/rubik/RubikRenderer.cpp.o


CMakeFiles/rubik.dir/rubik/RubikLogic.cpp.o: CMakeFiles/rubik.dir/flags.make
CMakeFiles/rubik.dir/rubik/RubikLogic.cpp.o: ../rubik/RubikLogic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/rubik.dir/rubik/RubikLogic.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rubik.dir/rubik/RubikLogic.cpp.o -c /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/rubik/RubikLogic.cpp

CMakeFiles/rubik.dir/rubik/RubikLogic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rubik.dir/rubik/RubikLogic.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/rubik/RubikLogic.cpp > CMakeFiles/rubik.dir/rubik/RubikLogic.cpp.i

CMakeFiles/rubik.dir/rubik/RubikLogic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rubik.dir/rubik/RubikLogic.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/rubik/RubikLogic.cpp -o CMakeFiles/rubik.dir/rubik/RubikLogic.cpp.s

CMakeFiles/rubik.dir/rubik/RubikLogic.cpp.o.requires:

.PHONY : CMakeFiles/rubik.dir/rubik/RubikLogic.cpp.o.requires

CMakeFiles/rubik.dir/rubik/RubikLogic.cpp.o.provides: CMakeFiles/rubik.dir/rubik/RubikLogic.cpp.o.requires
	$(MAKE) -f CMakeFiles/rubik.dir/build.make CMakeFiles/rubik.dir/rubik/RubikLogic.cpp.o.provides.build
.PHONY : CMakeFiles/rubik.dir/rubik/RubikLogic.cpp.o.provides

CMakeFiles/rubik.dir/rubik/RubikLogic.cpp.o.provides.build: CMakeFiles/rubik.dir/rubik/RubikLogic.cpp.o


CMakeFiles/rubik.dir/rubik/GameStage.cpp.o: CMakeFiles/rubik.dir/flags.make
CMakeFiles/rubik.dir/rubik/GameStage.cpp.o: ../rubik/GameStage.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/rubik.dir/rubik/GameStage.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rubik.dir/rubik/GameStage.cpp.o -c /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/rubik/GameStage.cpp

CMakeFiles/rubik.dir/rubik/GameStage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rubik.dir/rubik/GameStage.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/rubik/GameStage.cpp > CMakeFiles/rubik.dir/rubik/GameStage.cpp.i

CMakeFiles/rubik.dir/rubik/GameStage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rubik.dir/rubik/GameStage.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/rubik/GameStage.cpp -o CMakeFiles/rubik.dir/rubik/GameStage.cpp.s

CMakeFiles/rubik.dir/rubik/GameStage.cpp.o.requires:

.PHONY : CMakeFiles/rubik.dir/rubik/GameStage.cpp.o.requires

CMakeFiles/rubik.dir/rubik/GameStage.cpp.o.provides: CMakeFiles/rubik.dir/rubik/GameStage.cpp.o.requires
	$(MAKE) -f CMakeFiles/rubik.dir/build.make CMakeFiles/rubik.dir/rubik/GameStage.cpp.o.provides.build
.PHONY : CMakeFiles/rubik.dir/rubik/GameStage.cpp.o.provides

CMakeFiles/rubik.dir/rubik/GameStage.cpp.o.provides.build: CMakeFiles/rubik.dir/rubik/GameStage.cpp.o


CMakeFiles/rubik.dir/rubik/TextPrinter.cpp.o: CMakeFiles/rubik.dir/flags.make
CMakeFiles/rubik.dir/rubik/TextPrinter.cpp.o: ../rubik/TextPrinter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/rubik.dir/rubik/TextPrinter.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rubik.dir/rubik/TextPrinter.cpp.o -c /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/rubik/TextPrinter.cpp

CMakeFiles/rubik.dir/rubik/TextPrinter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rubik.dir/rubik/TextPrinter.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/rubik/TextPrinter.cpp > CMakeFiles/rubik.dir/rubik/TextPrinter.cpp.i

CMakeFiles/rubik.dir/rubik/TextPrinter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rubik.dir/rubik/TextPrinter.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/rubik/TextPrinter.cpp -o CMakeFiles/rubik.dir/rubik/TextPrinter.cpp.s

CMakeFiles/rubik.dir/rubik/TextPrinter.cpp.o.requires:

.PHONY : CMakeFiles/rubik.dir/rubik/TextPrinter.cpp.o.requires

CMakeFiles/rubik.dir/rubik/TextPrinter.cpp.o.provides: CMakeFiles/rubik.dir/rubik/TextPrinter.cpp.o.requires
	$(MAKE) -f CMakeFiles/rubik.dir/build.make CMakeFiles/rubik.dir/rubik/TextPrinter.cpp.o.provides.build
.PHONY : CMakeFiles/rubik.dir/rubik/TextPrinter.cpp.o.provides

CMakeFiles/rubik.dir/rubik/TextPrinter.cpp.o.provides.build: CMakeFiles/rubik.dir/rubik/TextPrinter.cpp.o


# Object files for target rubik
rubik_OBJECTS = \
"CMakeFiles/rubik.dir/rubik/main.cpp.o" \
"CMakeFiles/rubik.dir/rubik/RubikApplication.cpp.o" \
"CMakeFiles/rubik.dir/rubik/RubikRenderer.cpp.o" \
"CMakeFiles/rubik.dir/rubik/RubikLogic.cpp.o" \
"CMakeFiles/rubik.dir/rubik/GameStage.cpp.o" \
"CMakeFiles/rubik.dir/rubik/TextPrinter.cpp.o"

# External object files for target rubik
rubik_EXTERNAL_OBJECTS =

rubik: CMakeFiles/rubik.dir/rubik/main.cpp.o
rubik: CMakeFiles/rubik.dir/rubik/RubikApplication.cpp.o
rubik: CMakeFiles/rubik.dir/rubik/RubikRenderer.cpp.o
rubik: CMakeFiles/rubik.dir/rubik/RubikLogic.cpp.o
rubik: CMakeFiles/rubik.dir/rubik/GameStage.cpp.o
rubik: CMakeFiles/rubik.dir/rubik/TextPrinter.cpp.o
rubik: CMakeFiles/rubik.dir/build.make
rubik: libutils.a
rubik: /usr/lib/x86_64-linux-gnu/libGLU.so
rubik: /usr/lib/x86_64-linux-gnu/libGL.so
rubik: CMakeFiles/rubik.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable rubik"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rubik.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rubik.dir/build: rubik

.PHONY : CMakeFiles/rubik.dir/build

CMakeFiles/rubik.dir/requires: CMakeFiles/rubik.dir/rubik/main.cpp.o.requires
CMakeFiles/rubik.dir/requires: CMakeFiles/rubik.dir/rubik/RubikApplication.cpp.o.requires
CMakeFiles/rubik.dir/requires: CMakeFiles/rubik.dir/rubik/RubikRenderer.cpp.o.requires
CMakeFiles/rubik.dir/requires: CMakeFiles/rubik.dir/rubik/RubikLogic.cpp.o.requires
CMakeFiles/rubik.dir/requires: CMakeFiles/rubik.dir/rubik/GameStage.cpp.o.requires
CMakeFiles/rubik.dir/requires: CMakeFiles/rubik.dir/rubik/TextPrinter.cpp.o.requires

.PHONY : CMakeFiles/rubik.dir/requires

CMakeFiles/rubik.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rubik.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rubik.dir/clean

CMakeFiles/rubik.dir/depend:
	cd /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/build /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/build /home/eleves/promo20/info/lrolan/Bureau/baseimg/TP1/glitter/build/CMakeFiles/rubik.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rubik.dir/depend

