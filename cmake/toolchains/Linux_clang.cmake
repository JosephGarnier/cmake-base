# Copyright 2019-present, Joseph Garnier
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

# CMAKE_SYSTEM_NAME - on unix this is uname -s, for windows it is Windows OR use cmake --system-information
set(CMAKE_SYSTEM_NAME Linux)
# CMAKE_SYSTEM_VERSION - on unix this is uname -r, for windows it is empty OR use cmake --system-information
set(CMAKE_SYSTEM_VERSION 4.4.0-21-generic)
# CMAKE_SYSTEM - ${CMAKE_SYSTEM}-${CMAKE_SYSTEM_VERSION}, for windows: ${CMAKE_SYSTEM}

#clang++-6.0 --version on unix
set(triple x86_64-pc-linux-gnu)

# specify the cross compiler
set(CMAKE_C_COMPILER clang-6.0)
set(CMAKE_C_COMPILER_TARGET ${triple})
set(CMAKE_CXX_COMPILER clang++-6.0)
set(CMAKE_CXX_COMPILER_TARGET ${triple})

# where is the target environment
list(APPEND CMAKE_FIND_ROOT_PATH "${${PROJECT_NAME}_PROJECT_PATH}")

# search for programs in the build host directories
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE BOTH)