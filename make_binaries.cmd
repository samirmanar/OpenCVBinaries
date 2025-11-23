
:: Set OpenCV version
set VERSION=4.12.0

:: ----------------- Package the Debug build -----------------

:: Copy includes
xcopy "opencv\build\opencv2" "binaries\Debug\include\opencv2" /E /I /Y
xcopy "opencv\include\opencv2" "binaries\Debug\include\opencv2" /E /I /Y
xcopy "opencv\modules\core\include\opencv2" "binaries\Debug\include\opencv2" /E /I /Y
xcopy "opencv\modules\calib3d\include\opencv2" "binaries\Debug\include\opencv2" /E /I /Y
xcopy "opencv\modules\features2d\include\opencv2" "binaries\Debug\include\opencv2" /E /I /Y
xcopy "opencv\modules\flann\include\opencv2" "binaries\Debug\include\opencv2" /E /I /Y
xcopy "opencv\modules\dnn\include\opencv2" "binaries\Debug\include\opencv2" /E /I /Y
xcopy "opencv\modules\highgui\include\opencv2" "binaries\Debug\include\opencv2" /E /I /Y
xcopy "opencv\modules\imgcodecs\include\opencv2" "binaries\Debug\include\opencv2" /E /I /Y
xcopy "opencv\modules\videoio\include\opencv2" "binaries\Debug\include\opencv2" /E /I /Y
xcopy "opencv\modules\imgproc\include\opencv2" "binaries\Debug\include\opencv2" /E /I /Y
xcopy "opencv\modules\ml\include\opencv2" "binaries\Debug\include\opencv2" /E /I /Y
xcopy "opencv\modules\objdetect\include\opencv2" "binaries\Debug\include\opencv2" /E /I /Y
xcopy "opencv\modules\photo\include\opencv2" "binaries\Debug\include\opencv2" /E /I /Y
xcopy "opencv\modules\stitching\include\opencv2" "binaries\Debug\include\opencv2" /E /I /Y
xcopy "opencv\modules\video\include\opencv2" "binaries\Debug\include\opencv2" /E /I /Y

xcopy "opencv\build\lib\Debug\*.lib" "binaries\Debug\lib\" /Y /I

xcopy "opencv\build\bin\Debug\*.dll" "binaries\Debug\bin\" /Y /I


:: Zip the Debug build
"C:\Program Files\7-Zip\7z.exe" a binaries\opencv_%VERSION%_debug_win_x64.zip .\binaries\Debug\*

:: ----------------- Package the Release build -----------------

:: Copy includes
xcopy "opencv\build\opencv2" "binaries\Release\include\opencv2" /E /I /Y
xcopy "opencv\include\opencv2" "binaries\Release\include\opencv2" /E /I /Y
xcopy "opencv\modules\core\include\opencv2" "binaries\Release\include\opencv2" /E /I /Y
xcopy "opencv\modules\calib3d\include\opencv2" "binaries\Release\include\opencv2" /E /I /Y
xcopy "opencv\modules\features2d\include\opencv2" "binaries\Release\include\opencv2" /E /I /Y
xcopy "opencv\modules\flann\include\opencv2" "binaries\Release\include\opencv2" /E /I /Y
xcopy "opencv\modules\dnn\include\opencv2" "binaries\Release\include\opencv2" /E /I /Y
xcopy "opencv\modules\highgui\include\opencv2" "binaries\Release\include\opencv2" /E /I /Y
xcopy "opencv\modules\imgcodecs\include\opencv2" "binaries\Release\include\opencv2" /E /I /Y
xcopy "opencv\modules\videoio\include\opencv2" "binaries\Release\include\opencv2" /E /I /Y
xcopy "opencv\modules\imgproc\include\opencv2" "binaries\Release\include\opencv2" /E /I /Y
xcopy "opencv\modules\ml\include\opencv2" "binaries\Release\include\opencv2" /E /I /Y
xcopy "opencv\modules\objdetect\include\opencv2" "binaries\Release\include\opencv2" /E /I /Y
xcopy "opencv\modules\photo\include\opencv2" "binaries\Release\include\opencv2" /E /I /Y
xcopy "opencv\modules\stitching\include\opencv2" "binaries\Release\include\opencv2" /E /I /Y
xcopy "opencv\modules\video\include\opencv2" "binaries\Release\include\opencv2" /E /I /Y

:: Copy libs
xcopy "opencv\build\lib\Release\*.lib" "binaries\Release\lib\" /Y /I

:: Copy dlls
xcopy "opencv\build\bin\Release\*.dll" "binaries\Release\bin\" /Y /I

:: Zip the Release build
"C:\Program Files\7-Zip\7z.exe" a binaries\opencv_%VERSION%_release_win_x64.zip .\binaries\Release\*

