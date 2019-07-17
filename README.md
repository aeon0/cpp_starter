# C++ Starter Project for Linux using CMake

## Setup
``` bash
# Run these commands to install cmake and compiler (g++)
>> sudo apt-get update
>> sudo apt-get install cmake
>> sudo apt-get install g++
```

## Build and Run
The script folder contains all the scripts that are needed to automatically build (and run) the project with cmake
``` bash
>> cd scripts

# Build project with specified build type (default=debug) and create executable to folder: dist/BUILD_TYPE
>> ./build.sh --build_type=release

# cd to executable and run it
cd ../dist/release
./CppStarter

# Remove all generated folders (build and dist)
>> ./clean.sh 
```
