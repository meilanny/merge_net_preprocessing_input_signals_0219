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
CMAKE_SOURCE_DIR = /home/lanmei/merge_net_preprocessing_input_signals_0219

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lanmei/merge_net_preprocessing_input_signals_0219/build

# Utility rule file for dump_size.

# Include any custom commands dependencies for this target.
include CMakeFiles/dump_size.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/dump_size.dir/progress.make

CMakeFiles/dump_size: main
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/lanmei/merge_net_preprocessing_input_signals_0219/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Invoking: SIZE NM, dump size in /home/lanmei/merge_net_preprocessing_input_signals_0219/build/main.size"
	/home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-size -B -x --common /home/lanmei/merge_net_preprocessing_input_signals_0219/build/main > /home/lanmei/merge_net_preprocessing_input_signals_0219/build/main.size
	/home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-nm -a -A -l -S --size-sort --special-syms /home/lanmei/merge_net_preprocessing_input_signals_0219/build/main >> /home/lanmei/merge_net_preprocessing_input_signals_0219/build/main.size

dump_size: CMakeFiles/dump_size
dump_size: CMakeFiles/dump_size.dir/build.make
.PHONY : dump_size

# Rule to build all files generated by this target.
CMakeFiles/dump_size.dir/build: dump_size
.PHONY : CMakeFiles/dump_size.dir/build

CMakeFiles/dump_size.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dump_size.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dump_size.dir/clean

CMakeFiles/dump_size.dir/depend:
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lanmei/merge_net_preprocessing_input_signals_0219 /home/lanmei/merge_net_preprocessing_input_signals_0219 /home/lanmei/merge_net_preprocessing_input_signals_0219/build /home/lanmei/merge_net_preprocessing_input_signals_0219/build /home/lanmei/merge_net_preprocessing_input_signals_0219/build/CMakeFiles/dump_size.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dump_size.dir/depend

