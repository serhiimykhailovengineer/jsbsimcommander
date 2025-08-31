cmake_minimum_required(VERSION 3.30)

project(JSBSimCommander)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

message(STATUS "wxWidgets_ROOT_DIR: ${wxWidgets_ROOT_DIR}")

find_package(wxWidgets 2.8.12 COMPONENTS core base xrc html adv core xml REQUIRED)

include(${wxWidgets_USE_FILE})

add_subdirectory(src)

file(
	COPY
		resources/engine
	DESTINATION 
		${CMAKE_BINARY_DIR}/bin
)
file(
	COPY
		resources/f16.xml
	DESTINATION 
		${CMAKE_BINARY_DIR}/bin
)
file(
	COPY
		resources/prop.csv
	DESTINATION 
		${CMAKE_BINARY_DIR}/bin
)
