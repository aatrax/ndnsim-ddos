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
CMAKE_SOURCE_DIR = /home/lvtao/ndnSIM/test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lvtao/ndnSIM/test

# Include any dependencies generated for this target.
include CMakeFiles/test_simp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test_simp.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test_simp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_simp.dir/flags.make

CMakeFiles/test_simp.dir/simple.cpp.o: CMakeFiles/test_simp.dir/flags.make
CMakeFiles/test_simp.dir/simple.cpp.o: simple.cpp
CMakeFiles/test_simp.dir/simple.cpp.o: CMakeFiles/test_simp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lvtao/ndnSIM/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_simp.dir/simple.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test_simp.dir/simple.cpp.o -MF CMakeFiles/test_simp.dir/simple.cpp.o.d -o CMakeFiles/test_simp.dir/simple.cpp.o -c /home/lvtao/ndnSIM/test/simple.cpp

CMakeFiles/test_simp.dir/simple.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_simp.dir/simple.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lvtao/ndnSIM/test/simple.cpp > CMakeFiles/test_simp.dir/simple.cpp.i

CMakeFiles/test_simp.dir/simple.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_simp.dir/simple.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lvtao/ndnSIM/test/simple.cpp -o CMakeFiles/test_simp.dir/simple.cpp.s

# Object files for target test_simp
test_simp_OBJECTS = \
"CMakeFiles/test_simp.dir/simple.cpp.o"

# External object files for target test_simp
test_simp_EXTERNAL_OBJECTS =

test_simp: CMakeFiles/test_simp.dir/simple.cpp.o
test_simp: CMakeFiles/test_simp.dir/build.make
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-antenna-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-aodv-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-applications-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-bridge-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-buildings-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-config-store-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-core-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-csma-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-csma-layout-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-dsdv-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-dsr-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-energy-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-fd-net-device-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-flow-monitor-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-internet-apps-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-internet-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-lr-wpan-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-lte-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-mesh-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-mobility-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-ndnSIM-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-netanim-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-network-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-nix-vector-routing-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-olsr-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-point-to-point-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-point-to-point-layout-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-propagation-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-sixlowpan-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-spectrum-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-stats-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-tap-bridge-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-test-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-topology-read-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-traffic-control-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-uan-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-virtual-net-device-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-visualizer-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-wave-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-wifi-debug.so
test_simp: /home/lvtao/ndnSIM/ns-3/build/lib/libns3.35-wimax-debug.so
test_simp: CMakeFiles/test_simp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lvtao/ndnSIM/test/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_simp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_simp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_simp.dir/build: test_simp
.PHONY : CMakeFiles/test_simp.dir/build

CMakeFiles/test_simp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_simp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_simp.dir/clean

CMakeFiles/test_simp.dir/depend:
	cd /home/lvtao/ndnSIM/test && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lvtao/ndnSIM/test /home/lvtao/ndnSIM/test /home/lvtao/ndnSIM/test /home/lvtao/ndnSIM/test /home/lvtao/ndnSIM/test/CMakeFiles/test_simp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_simp.dir/depend
