cmake_minimum_required(VERSION 3.9.1)
project(CMakeHello)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin)
message(${CMAKE_BINARY_DIR})

find_package(Curses)

include_directories(${CURSES_INCLUDE_DIR})

add_subdirectory(lib/math)
add_subdirectory(lib/yoga)
add_subdirectory(lib/quickjs-cmake)
#add_subdirectory(lib/boost)
add_executable(cmake_hello main.cpp)

target_link_libraries(cmake_hello math)
target_link_libraries(cmake_hello yogacore)
target_link_libraries(cmake_hello quickjs)
#target_link_libraries(cmake_hello Boost)
target_link_libraries(cmake_hello ${CURSES_LIBRARIES})