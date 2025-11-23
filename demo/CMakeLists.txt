set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(demo main.cpp)

target_include_directories(demo PRIVATE ${OPENCV_INCLUDE_DIRS})

target_link_libraries(demo PRIVATE ${OPENCV_LIBRARIES})

# Copy all DLLs after build
add_custom_command(
    TARGET demo POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_directory
        "$<SHELL_PATH:${OPENCV_RUNTIME_DIR}>"
        "$<TARGET_FILE_DIR:demo>"
)
