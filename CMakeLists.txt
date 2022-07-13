#CMakeLists.txt
cmake_minimum_required (VERSION 3.6)
project(cppbot)

add_executable(cppbot source.cpp)

#Add these two lines
add_subdirectory(deps/sleepy-discord)
add_subdirectory(deps/cpp-dotenv)

target_link_libraries(cppbot sleepy-discord)
target_link_libraries(cppbot cpp_dotenv)