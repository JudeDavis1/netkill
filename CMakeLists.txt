cmake_minimum_required(VERSION 3.10)

project(netkill C)

file(GLOB_RECURSE SRC_FILES src/*.c)

include_directories(src)
add_executable(netkill netkill.c ${SRC_FILES})
