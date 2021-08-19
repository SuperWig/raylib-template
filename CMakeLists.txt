cmake_minimum_required(VERSION 3.14...3.20)
# The project name will be used for the executable and target name
project(raylib-example LANGUAGES CXX)

add_executable(${PROJECT_NAME} main.cpp) # Add .cpp files here separated by spaces
target_compile_features(${PROJECT_NAME} PRIVATE cxx_std_11) # Apple really ought to update their compiler...

include("${CMAKE_CURRENT_LIST_DIR}/cmake/FindRaylib.cmake")

# To copy a directory to build folder
# file(COPY ${PROJECT_SOURCE_DIR}/textures DESTINATION ${PROJECT_BINARY_DIR})
