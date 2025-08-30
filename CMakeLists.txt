cmake_minimum_required(VERSION 3.30)

project(JSBSimCommander)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

message(STATUS "wxWidgets_ROOT_DIR: ${wxWidgets_ROOT_DIR}")

find_package(wxWidgets 2.8.12 COMPONENTS core base xrc html adv core xml REQUIRED)

include(${wxWidgets_USE_FILE})

add_subdirectory(src)
