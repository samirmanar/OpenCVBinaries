set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(demo main.cpp)

set(OpenCV_INCLUDE_DIR "../binaries/Debug/include")
file(GLOB OpenCV_LIBRARIES "../binaries/Debug/lib/*.lib")
file(GLOB OpenCV_RUNTIME_LIBRARIES "../binaries/Debug/bin/*.dll")

target_include_directories(demo PRIVATE ${OpenCV_INCLUDE_DIR})

target_link_libraries(demo PRIVATE ${OpenCV_LIBRARIES})

# Copy all DLLs to output directory
add_custom_command(
    TARGET demo POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_directory
            "${CMAKE_SOURCE_DIR}/binaries/Debug/bin"
            "$<TARGET_FILE_DIR:demo>"
)

message("--------------------------------------------------------")
message(" Debug Info:")
message("   CMAKE_BUILD_TYPE:   " ${CMAKE_BUILD_TYPE})
message("   CMAKE_BINARY_DIR:   " ${CMAKE_BINARY_DIR})
message("   OpenCV_INCLUDE_DIR: " ${OpenCV_INCLUDE_DIR})
message("   OpenCV_LIBRARIES:   " ${OpenCV_LIBRARIES})
message("--------------------------------------------------------")
