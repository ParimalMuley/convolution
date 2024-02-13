cmake_minimum_required(VERSION 3.16.3)
project(convolution_thread)
set(CMAKE_CXX_STANDARD 11)

find_package(Threads REQUIRED)

add_executable(convolution_thread convolution_multi.cpp)

target_link_libraries( convolution_thread PRIVATE Threads::Threads)

