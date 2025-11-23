# OpenCV Binaries

## How to build the demo project

```bash
cmake -S . -B ./build
cmake --build ./build --config Debug --parallel
```

## How to build OpenCV (optional)

Clone the repo:
```bash
git clone https://github.com/opencv/opencv.git
cd opencv
```

Checkout the 4.12.0 tag
```bash
git checkout 4.12.0
```

Build the Debug version:
```bash
cmake -S . -B ./build -D CMAKE_BUILD_TYPE=Debug
cmake --build ./build --config Debug --parallel
```

Build the Release version:
```bash
cmake -S . -B ./build -D CMAKE_BUILD_TYPE=Release
cmake --build ./build --config Release --parallel
```
