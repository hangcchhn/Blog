
- CMakeLists.txt

```c
# 指定cmake最低编译版本：cmake 3.9
cmake_minimum_required(VERSION 3.9)
# C语言版本：C99
set(CMAKE_C_STANDARD 99)

# 项目名称：可配置多个，每个项目对应一个可执行程序
project(clanguage C)

set(src_var main.c main.h)

# cmake添加gdb支持
set(CMAKE_BUILD_TYPE "Debug")
set(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -O0 -Wall -g -ggdb")
set(CMAKE_CXX_FLAGS_RELEASE "$ENV{CXXFLAGS} -O3 -Wall")

file(glob c_file '${project_source_dir}/*.c')

# 添加当前目录下的所有源码文件
aux_source_directory(. src_dir)
# 添加子文件夹
add_subdirectory(sub)

# 可执行程序
add_executable(clanguage ${src_var})


# 添加动态库依赖
target_link_libraries(clanguage libcrypto.so)
target_link_libraries(clanguage libcurl.so)


# 添加链接库目录
link_directories(/usr/local/lib64/)


# 添加头文件目录
include_directories(/usr/java/jdk1.8.0_202/include)
include_directories(/usr/java/jdk1.8.0_202/include/linux)



add_definitions(-w)

# 生成静态库
add_library(clanguage STATIC main.c des3.c des3.h)
# 生成动态库
add_library(clanguage SHARED main.c des3.c des3.h)


find_library

# 打印信息
message(status 'message' ${src_var})


# 指定生成版本号，VERSION指代动态库版本，SOVERSION指代API版本
set_target_properties(clanguage properties version 1.2 soversion 1)

```