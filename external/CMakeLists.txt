include(FetchContent)

Set(FETCHCONTENT_QUIET FALSE)

# OpenCV
if(WIN32)
    if (NOT TARGET opencv_debug)
        # opencv_debug
        FetchContent_Declare(opencv_debug
        URL https://github.com/samirmanar/OpenCVBinaries/releases/download/4.12.0/opencv_4.12.0_debug_win_x64.zip
        GIT_PROGRESS TRUE
        )
        FetchContent_MakeAvailable(opencv_debug)
        set(OpenCV_Debug_DIR ${opencv_debug_SOURCE_DIR})
    endif()
    
    if (NOT TARGET opencv_release)
        # opencv_release
        FetchContent_Declare(opencv_release
        URL https://github.com/samirmanar/OpenCVBinaries/releases/download/4.12.0/opencv_4.12.0_release_win_x64.zip
        GIT_PROGRESS TRUE
        )
        FetchContent_MakeAvailable(opencv_release)
        set(OpenCV_Release_DIR ${opencv_release_SOURCE_DIR})
    endif()
    
    set(OPENCV_DIR "$<IF:$<CONFIG:Debug>,${OpenCV_Debug_DIR},${OpenCV_Release_DIR}>")
    
    set(OPENCV_INCLUDE_DIRS
        ${OPENCV_DIR}/include
        ${OPENCV_DIR}/build
        ${OPENCV_DIR}/modules/calib3d/include
        ${OPENCV_DIR}/modules/core/include
        ${OPENCV_DIR}/modules/dnn/include
        ${OPENCV_DIR}/modules/features2d/include
        ${OPENCV_DIR}/modules/flann/include
        ${OPENCV_DIR}/modules/highgui/include
        ${OPENCV_DIR}/modules/imgcodecs/include
        ${OPENCV_DIR}/modules/imgproc/include
        ${OPENCV_DIR}/modules/ml/include
        ${OPENCV_DIR}/modules/objdetect/include
        ${OPENCV_DIR}/modules/photo/include
        ${OPENCV_DIR}/modules/stitching/include
        ${OPENCV_DIR}/modules/video/include
        ${OPENCV_DIR}/modules/videoio/include
        PARENT_SCOPE
    )
    
    set(OPENCV_LIBRARIES
        ${OPENCV_DIR}/lib/opencv_calib3d4120$<$<CONFIG:Debug>:d>.lib
        ${OPENCV_DIR}/lib/opencv_core4120$<$<CONFIG:Debug>:d>.lib
        ${OPENCV_DIR}/lib/opencv_dnn4120$<$<CONFIG:Debug>:d>.lib
        ${OPENCV_DIR}/lib/opencv_features2d4120$<$<CONFIG:Debug>:d>.lib
        ${OPENCV_DIR}/lib/opencv_flann4120$<$<CONFIG:Debug>:d>.lib
        ${OPENCV_DIR}/lib/opencv_gapi4120$<$<CONFIG:Debug>:d>.lib
        ${OPENCV_DIR}/lib/opencv_highgui4120$<$<CONFIG:Debug>:d>.lib
        ${OPENCV_DIR}/lib/opencv_imgcodecs4120$<$<CONFIG:Debug>:d>.lib
        ${OPENCV_DIR}/lib/opencv_imgproc4120$<$<CONFIG:Debug>:d>.lib
        ${OPENCV_DIR}/lib/opencv_ml4120$<$<CONFIG:Debug>:d>.lib
        ${OPENCV_DIR}/lib/opencv_objdetect4120$<$<CONFIG:Debug>:d>.lib
        ${OPENCV_DIR}/lib/opencv_photo4120$<$<CONFIG:Debug>:d>.lib
        ${OPENCV_DIR}/lib/opencv_stitching4120$<$<CONFIG:Debug>:d>.lib
        ${OPENCV_DIR}/lib/opencv_ts4120$<$<CONFIG:Debug>:d>.lib
        ${OPENCV_DIR}/lib/opencv_video4120$<$<CONFIG:Debug>:d>.lib
        ${OPENCV_DIR}/lib/opencv_videoio4120$<$<CONFIG:Debug>:d>.lib
        PARENT_SCOPE
    )
    
    set(OPENCV_RUNTIME_DIR ${OPENCV_DIR}/bin PARENT_SCOPE)
    
endif()
