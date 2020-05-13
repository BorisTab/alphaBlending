cmake_minimum_required(VERSION 3.16)
project(alphaBlending)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_FLAGS "-mavx2")

add_executable(alphaBlending main.cpp fileRead.h)