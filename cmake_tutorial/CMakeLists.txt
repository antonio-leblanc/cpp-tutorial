cmake_minimum_required(VERSION 3.10)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(firepropagation VERSION 1.0)

add_subdirectory(src/Models)
add_subdirectory(src/DataBroker)
# file(GLOB_RECURSE SRC_FILES src/*.cpp)
add_executable(programa main.cpp ${SRC_FILES})

target_link_libraries(programa PUBLIC firelib datalib)