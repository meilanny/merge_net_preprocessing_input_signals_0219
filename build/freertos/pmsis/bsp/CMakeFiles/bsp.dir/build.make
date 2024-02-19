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

# Include any dependencies generated for this target.
include freertos/pmsis/bsp/CMakeFiles/bsp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include freertos/pmsis/bsp/CMakeFiles/bsp.dir/compiler_depend.make

# Include the progress variables for this target.
include freertos/pmsis/bsp/CMakeFiles/bsp.dir/progress.make

# Include the compile flags for this target's objects.
include freertos/pmsis/bsp/CMakeFiles/bsp.dir/flags.make

freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/bsp.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/flags.make
freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/bsp.c.obj: /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/bsp/bsp.c
freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/bsp.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lanmei/merge_net_preprocessing_input_signals_0219/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/bsp.c.obj"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/bsp.c.obj -MF CMakeFiles/bsp.dir/bsp/bsp.c.obj.d -o CMakeFiles/bsp.dir/bsp/bsp.c.obj -c /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/bsp/bsp.c

freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/bsp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bsp.dir/bsp/bsp.c.i"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/bsp/bsp.c > CMakeFiles/bsp.dir/bsp/bsp.c.i

freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/bsp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bsp.dir/bsp/bsp.c.s"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/bsp/bsp.c -o CMakeFiles/bsp.dir/bsp/bsp.c.s

freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/boards/bsp_gap9mod_v1_0_b.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/flags.make
freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/boards/bsp_gap9mod_v1_0_b.c.obj: /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/bsp/boards/bsp_gap9mod_v1_0_b.c
freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/boards/bsp_gap9mod_v1_0_b.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lanmei/merge_net_preprocessing_input_signals_0219/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/boards/bsp_gap9mod_v1_0_b.c.obj"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/boards/bsp_gap9mod_v1_0_b.c.obj -MF CMakeFiles/bsp.dir/bsp/boards/bsp_gap9mod_v1_0_b.c.obj.d -o CMakeFiles/bsp.dir/bsp/boards/bsp_gap9mod_v1_0_b.c.obj -c /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/bsp/boards/bsp_gap9mod_v1_0_b.c

freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/boards/bsp_gap9mod_v1_0_b.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bsp.dir/bsp/boards/bsp_gap9mod_v1_0_b.c.i"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/bsp/boards/bsp_gap9mod_v1_0_b.c > CMakeFiles/bsp.dir/bsp/boards/bsp_gap9mod_v1_0_b.c.i

freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/boards/bsp_gap9mod_v1_0_b.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bsp.dir/bsp/boards/bsp_gap9mod_v1_0_b.c.s"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/bsp/boards/bsp_gap9mod_v1_0_b.c -o CMakeFiles/bsp.dir/bsp/boards/bsp_gap9mod_v1_0_b.c.s

freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/boards/bsp_gap9evk_v1_3.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/flags.make
freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/boards/bsp_gap9evk_v1_3.c.obj: /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/bsp/boards/bsp_gap9evk_v1_3.c
freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/boards/bsp_gap9evk_v1_3.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lanmei/merge_net_preprocessing_input_signals_0219/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/boards/bsp_gap9evk_v1_3.c.obj"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/boards/bsp_gap9evk_v1_3.c.obj -MF CMakeFiles/bsp.dir/bsp/boards/bsp_gap9evk_v1_3.c.obj.d -o CMakeFiles/bsp.dir/bsp/boards/bsp_gap9evk_v1_3.c.obj -c /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/bsp/boards/bsp_gap9evk_v1_3.c

freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/boards/bsp_gap9evk_v1_3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bsp.dir/bsp/boards/bsp_gap9evk_v1_3.c.i"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/bsp/boards/bsp_gap9evk_v1_3.c > CMakeFiles/bsp.dir/bsp/boards/bsp_gap9evk_v1_3.c.i

freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/boards/bsp_gap9evk_v1_3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bsp.dir/bsp/boards/bsp_gap9evk_v1_3.c.s"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/bsp/boards/bsp_gap9evk_v1_3.c -o CMakeFiles/bsp.dir/bsp/boards/bsp_gap9evk_v1_3.c.s

freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/flash.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/flags.make
freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/flash.c.obj: /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/flash/flash.c
freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/flash.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lanmei/merge_net_preprocessing_input_signals_0219/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/flash.c.obj"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/flash.c.obj -MF CMakeFiles/bsp.dir/flash/flash.c.obj.d -o CMakeFiles/bsp.dir/flash/flash.c.obj -c /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/flash/flash.c

freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/flash.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bsp.dir/flash/flash.c.i"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/flash/flash.c > CMakeFiles/bsp.dir/flash/flash.c.i

freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/flash.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bsp.dir/flash/flash.c.s"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/flash/flash.c -o CMakeFiles/bsp.dir/flash/flash.c.s

freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/mram/mram-v2.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/flags.make
freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/mram/mram-v2.c.obj: /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/flash/mram/mram-v2.c
freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/mram/mram-v2.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lanmei/merge_net_preprocessing_input_signals_0219/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/mram/mram-v2.c.obj"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/mram/mram-v2.c.obj -MF CMakeFiles/bsp.dir/flash/mram/mram-v2.c.obj.d -o CMakeFiles/bsp.dir/flash/mram/mram-v2.c.obj -c /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/flash/mram/mram-v2.c

freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/mram/mram-v2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bsp.dir/flash/mram/mram-v2.c.i"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/flash/mram/mram-v2.c > CMakeFiles/bsp.dir/flash/mram/mram-v2.c.i

freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/mram/mram-v2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bsp.dir/flash/mram/mram-v2.c.s"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/flash/mram/mram-v2.c -o CMakeFiles/bsp.dir/flash/mram/mram-v2.c.s

freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/spiflash/mx25u51245g.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/flags.make
freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/spiflash/mx25u51245g.c.obj: /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/flash/spiflash/mx25u51245g.c
freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/spiflash/mx25u51245g.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lanmei/merge_net_preprocessing_input_signals_0219/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/spiflash/mx25u51245g.c.obj"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/spiflash/mx25u51245g.c.obj -MF CMakeFiles/bsp.dir/flash/spiflash/mx25u51245g.c.obj.d -o CMakeFiles/bsp.dir/flash/spiflash/mx25u51245g.c.obj -c /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/flash/spiflash/mx25u51245g.c

freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/spiflash/mx25u51245g.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bsp.dir/flash/spiflash/mx25u51245g.c.i"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/flash/spiflash/mx25u51245g.c > CMakeFiles/bsp.dir/flash/spiflash/mx25u51245g.c.i

freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/spiflash/mx25u51245g.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bsp.dir/flash/spiflash/mx25u51245g.c.s"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/flash/spiflash/mx25u51245g.c -o CMakeFiles/bsp.dir/flash/spiflash/mx25u51245g.c.s

freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/fs.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/flags.make
freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/fs.c.obj: /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/fs/fs.c
freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/fs.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lanmei/merge_net_preprocessing_input_signals_0219/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/fs.c.obj"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/fs.c.obj -MF CMakeFiles/bsp.dir/fs/fs.c.obj.d -o CMakeFiles/bsp.dir/fs/fs.c.obj -c /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/fs/fs.c

freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/fs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bsp.dir/fs/fs.c.i"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/fs/fs.c > CMakeFiles/bsp.dir/fs/fs.c.i

freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/fs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bsp.dir/fs/fs.c.s"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/fs/fs.c -o CMakeFiles/bsp.dir/fs/fs.c.s

freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/host_fs/host_fs.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/flags.make
freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/host_fs/host_fs.c.obj: /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/fs/host_fs/host_fs.c
freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/host_fs/host_fs.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lanmei/merge_net_preprocessing_input_signals_0219/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/host_fs/host_fs.c.obj"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/host_fs/host_fs.c.obj -MF CMakeFiles/bsp.dir/fs/host_fs/host_fs.c.obj.d -o CMakeFiles/bsp.dir/fs/host_fs/host_fs.c.obj -c /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/fs/host_fs/host_fs.c

freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/host_fs/host_fs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bsp.dir/fs/host_fs/host_fs.c.i"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/fs/host_fs/host_fs.c > CMakeFiles/bsp.dir/fs/host_fs/host_fs.c.i

freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/host_fs/host_fs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bsp.dir/fs/host_fs/host_fs.c.s"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/fs/host_fs/host_fs.c -o CMakeFiles/bsp.dir/fs/host_fs/host_fs.c.s

freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/read_fs/read_fs.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/flags.make
freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/read_fs/read_fs.c.obj: /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/fs/read_fs/read_fs.c
freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/read_fs/read_fs.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lanmei/merge_net_preprocessing_input_signals_0219/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/read_fs/read_fs.c.obj"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/read_fs/read_fs.c.obj -MF CMakeFiles/bsp.dir/fs/read_fs/read_fs.c.obj.d -o CMakeFiles/bsp.dir/fs/read_fs/read_fs.c.obj -c /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/fs/read_fs/read_fs.c

freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/read_fs/read_fs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bsp.dir/fs/read_fs/read_fs.c.i"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/fs/read_fs/read_fs.c > CMakeFiles/bsp.dir/fs/read_fs/read_fs.c.i

freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/read_fs/read_fs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bsp.dir/fs/read_fs/read_fs.c.s"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/fs/read_fs/read_fs.c -o CMakeFiles/bsp.dir/fs/read_fs/read_fs.c.s

freertos/pmsis/bsp/CMakeFiles/bsp.dir/partition/flash_partition_v2.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/flags.make
freertos/pmsis/bsp/CMakeFiles/bsp.dir/partition/flash_partition_v2.c.obj: /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/partition/flash_partition_v2.c
freertos/pmsis/bsp/CMakeFiles/bsp.dir/partition/flash_partition_v2.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lanmei/merge_net_preprocessing_input_signals_0219/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object freertos/pmsis/bsp/CMakeFiles/bsp.dir/partition/flash_partition_v2.c.obj"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT freertos/pmsis/bsp/CMakeFiles/bsp.dir/partition/flash_partition_v2.c.obj -MF CMakeFiles/bsp.dir/partition/flash_partition_v2.c.obj.d -o CMakeFiles/bsp.dir/partition/flash_partition_v2.c.obj -c /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/partition/flash_partition_v2.c

freertos/pmsis/bsp/CMakeFiles/bsp.dir/partition/flash_partition_v2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bsp.dir/partition/flash_partition_v2.c.i"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/partition/flash_partition_v2.c > CMakeFiles/bsp.dir/partition/flash_partition_v2.c.i

freertos/pmsis/bsp/CMakeFiles/bsp.dir/partition/flash_partition_v2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bsp.dir/partition/flash_partition_v2.c.s"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/partition/flash_partition_v2.c -o CMakeFiles/bsp.dir/partition/flash_partition_v2.c.s

freertos/pmsis/bsp/CMakeFiles/bsp.dir/partition/secret_storage.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/flags.make
freertos/pmsis/bsp/CMakeFiles/bsp.dir/partition/secret_storage.c.obj: /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/partition/secret_storage.c
freertos/pmsis/bsp/CMakeFiles/bsp.dir/partition/secret_storage.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lanmei/merge_net_preprocessing_input_signals_0219/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object freertos/pmsis/bsp/CMakeFiles/bsp.dir/partition/secret_storage.c.obj"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT freertos/pmsis/bsp/CMakeFiles/bsp.dir/partition/secret_storage.c.obj -MF CMakeFiles/bsp.dir/partition/secret_storage.c.obj.d -o CMakeFiles/bsp.dir/partition/secret_storage.c.obj -c /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/partition/secret_storage.c

freertos/pmsis/bsp/CMakeFiles/bsp.dir/partition/secret_storage.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bsp.dir/partition/secret_storage.c.i"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/partition/secret_storage.c > CMakeFiles/bsp.dir/partition/secret_storage.c.i

freertos/pmsis/bsp/CMakeFiles/bsp.dir/partition/secret_storage.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bsp.dir/partition/secret_storage.c.s"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/partition/secret_storage.c -o CMakeFiles/bsp.dir/partition/secret_storage.c.s

freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/alloc_extern.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/flags.make
freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/alloc_extern.c.obj: /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/ram/alloc_extern.c
freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/alloc_extern.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lanmei/merge_net_preprocessing_input_signals_0219/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/alloc_extern.c.obj"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/alloc_extern.c.obj -MF CMakeFiles/bsp.dir/ram/alloc_extern.c.obj.d -o CMakeFiles/bsp.dir/ram/alloc_extern.c.obj -c /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/ram/alloc_extern.c

freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/alloc_extern.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bsp.dir/ram/alloc_extern.c.i"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/ram/alloc_extern.c > CMakeFiles/bsp.dir/ram/alloc_extern.c.i

freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/alloc_extern.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bsp.dir/ram/alloc_extern.c.s"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/ram/alloc_extern.c -o CMakeFiles/bsp.dir/ram/alloc_extern.c.s

freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/ram.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/flags.make
freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/ram.c.obj: /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/ram/ram.c
freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/ram.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lanmei/merge_net_preprocessing_input_signals_0219/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/ram.c.obj"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/ram.c.obj -MF CMakeFiles/bsp.dir/ram/ram.c.obj.d -o CMakeFiles/bsp.dir/ram/ram.c.obj -c /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/ram/ram.c

freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/ram.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bsp.dir/ram/ram.c.i"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/ram/ram.c > CMakeFiles/bsp.dir/ram/ram.c.i

freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/ram.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bsp.dir/ram/ram.c.s"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/ram/ram.c -o CMakeFiles/bsp.dir/ram/ram.c.s

freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/spiram/aps256xxn.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/flags.make
freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/spiram/aps256xxn.c.obj: /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/ram/spiram/aps256xxn.c
freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/spiram/aps256xxn.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lanmei/merge_net_preprocessing_input_signals_0219/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/spiram/aps256xxn.c.obj"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/spiram/aps256xxn.c.obj -MF CMakeFiles/bsp.dir/ram/spiram/aps256xxn.c.obj.d -o CMakeFiles/bsp.dir/ram/spiram/aps256xxn.c.obj -c /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/ram/spiram/aps256xxn.c

freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/spiram/aps256xxn.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bsp.dir/ram/spiram/aps256xxn.c.i"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/ram/spiram/aps256xxn.c > CMakeFiles/bsp.dir/ram/spiram/aps256xxn.c.i

freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/spiram/aps256xxn.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bsp.dir/ram/spiram/aps256xxn.c.s"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/ram/spiram/aps256xxn.c -o CMakeFiles/bsp.dir/ram/spiram/aps256xxn.c.s

freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/powersupply/powersupply.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/flags.make
freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/powersupply/powersupply.c.obj: /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/bsp/powersupply/powersupply.c
freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/powersupply/powersupply.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lanmei/merge_net_preprocessing_input_signals_0219/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/powersupply/powersupply.c.obj"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/powersupply/powersupply.c.obj -MF CMakeFiles/bsp.dir/bsp/powersupply/powersupply.c.obj.d -o CMakeFiles/bsp.dir/bsp/powersupply/powersupply.c.obj -c /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/bsp/powersupply/powersupply.c

freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/powersupply/powersupply.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bsp.dir/bsp/powersupply/powersupply.c.i"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/bsp/powersupply/powersupply.c > CMakeFiles/bsp.dir/bsp/powersupply/powersupply.c.i

freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/powersupply/powersupply.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bsp.dir/bsp/powersupply/powersupply.c.s"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/bsp/powersupply/powersupply.c -o CMakeFiles/bsp.dir/bsp/powersupply/powersupply.c.s

freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/powersupply/powersupplygpio.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/flags.make
freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/powersupply/powersupplygpio.c.obj: /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/bsp/powersupply/powersupplygpio.c
freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/powersupply/powersupplygpio.c.obj: freertos/pmsis/bsp/CMakeFiles/bsp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lanmei/merge_net_preprocessing_input_signals_0219/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/powersupply/powersupplygpio.c.obj"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/powersupply/powersupplygpio.c.obj -MF CMakeFiles/bsp.dir/bsp/powersupply/powersupplygpio.c.obj.d -o CMakeFiles/bsp.dir/bsp/powersupply/powersupplygpio.c.obj -c /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/bsp/powersupply/powersupplygpio.c

freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/powersupply/powersupplygpio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bsp.dir/bsp/powersupply/powersupplygpio.c.i"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/bsp/powersupply/powersupplygpio.c > CMakeFiles/bsp.dir/bsp/powersupply/powersupplygpio.c.i

freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/powersupply/powersupplygpio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bsp.dir/bsp/powersupply/powersupplygpio.c.s"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lanmei/gap_sdk_private/rtos/pmsis/bsp/bsp/powersupply/powersupplygpio.c -o CMakeFiles/bsp.dir/bsp/powersupply/powersupplygpio.c.s

# Object files for target bsp
bsp_OBJECTS = \
"CMakeFiles/bsp.dir/bsp/bsp.c.obj" \
"CMakeFiles/bsp.dir/bsp/boards/bsp_gap9mod_v1_0_b.c.obj" \
"CMakeFiles/bsp.dir/bsp/boards/bsp_gap9evk_v1_3.c.obj" \
"CMakeFiles/bsp.dir/flash/flash.c.obj" \
"CMakeFiles/bsp.dir/flash/mram/mram-v2.c.obj" \
"CMakeFiles/bsp.dir/flash/spiflash/mx25u51245g.c.obj" \
"CMakeFiles/bsp.dir/fs/fs.c.obj" \
"CMakeFiles/bsp.dir/fs/host_fs/host_fs.c.obj" \
"CMakeFiles/bsp.dir/fs/read_fs/read_fs.c.obj" \
"CMakeFiles/bsp.dir/partition/flash_partition_v2.c.obj" \
"CMakeFiles/bsp.dir/partition/secret_storage.c.obj" \
"CMakeFiles/bsp.dir/ram/alloc_extern.c.obj" \
"CMakeFiles/bsp.dir/ram/ram.c.obj" \
"CMakeFiles/bsp.dir/ram/spiram/aps256xxn.c.obj" \
"CMakeFiles/bsp.dir/bsp/powersupply/powersupply.c.obj" \
"CMakeFiles/bsp.dir/bsp/powersupply/powersupplygpio.c.obj"

# External object files for target bsp
bsp_EXTERNAL_OBJECTS =

freertos/pmsis/bsp/libbsp.a: freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/bsp.c.obj
freertos/pmsis/bsp/libbsp.a: freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/boards/bsp_gap9mod_v1_0_b.c.obj
freertos/pmsis/bsp/libbsp.a: freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/boards/bsp_gap9evk_v1_3.c.obj
freertos/pmsis/bsp/libbsp.a: freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/flash.c.obj
freertos/pmsis/bsp/libbsp.a: freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/mram/mram-v2.c.obj
freertos/pmsis/bsp/libbsp.a: freertos/pmsis/bsp/CMakeFiles/bsp.dir/flash/spiflash/mx25u51245g.c.obj
freertos/pmsis/bsp/libbsp.a: freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/fs.c.obj
freertos/pmsis/bsp/libbsp.a: freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/host_fs/host_fs.c.obj
freertos/pmsis/bsp/libbsp.a: freertos/pmsis/bsp/CMakeFiles/bsp.dir/fs/read_fs/read_fs.c.obj
freertos/pmsis/bsp/libbsp.a: freertos/pmsis/bsp/CMakeFiles/bsp.dir/partition/flash_partition_v2.c.obj
freertos/pmsis/bsp/libbsp.a: freertos/pmsis/bsp/CMakeFiles/bsp.dir/partition/secret_storage.c.obj
freertos/pmsis/bsp/libbsp.a: freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/alloc_extern.c.obj
freertos/pmsis/bsp/libbsp.a: freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/ram.c.obj
freertos/pmsis/bsp/libbsp.a: freertos/pmsis/bsp/CMakeFiles/bsp.dir/ram/spiram/aps256xxn.c.obj
freertos/pmsis/bsp/libbsp.a: freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/powersupply/powersupply.c.obj
freertos/pmsis/bsp/libbsp.a: freertos/pmsis/bsp/CMakeFiles/bsp.dir/bsp/powersupply/powersupplygpio.c.obj
freertos/pmsis/bsp/libbsp.a: freertos/pmsis/bsp/CMakeFiles/bsp.dir/build.make
freertos/pmsis/bsp/libbsp.a: freertos/pmsis/bsp/CMakeFiles/bsp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lanmei/merge_net_preprocessing_input_signals_0219/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Linking C static library libbsp.a"
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && $(CMAKE_COMMAND) -P CMakeFiles/bsp.dir/cmake_clean_target.cmake
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bsp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
freertos/pmsis/bsp/CMakeFiles/bsp.dir/build: freertos/pmsis/bsp/libbsp.a
.PHONY : freertos/pmsis/bsp/CMakeFiles/bsp.dir/build

freertos/pmsis/bsp/CMakeFiles/bsp.dir/clean:
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp && $(CMAKE_COMMAND) -P CMakeFiles/bsp.dir/cmake_clean.cmake
.PHONY : freertos/pmsis/bsp/CMakeFiles/bsp.dir/clean

freertos/pmsis/bsp/CMakeFiles/bsp.dir/depend:
	cd /home/lanmei/merge_net_preprocessing_input_signals_0219/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lanmei/merge_net_preprocessing_input_signals_0219 /home/lanmei/gap_sdk_private/rtos/pmsis/bsp /home/lanmei/merge_net_preprocessing_input_signals_0219/build /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp /home/lanmei/merge_net_preprocessing_input_signals_0219/build/freertos/pmsis/bsp/CMakeFiles/bsp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : freertos/pmsis/bsp/CMakeFiles/bsp.dir/depend
