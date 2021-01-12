#!/bin/bash

echo Creating build and deploy folders..

# Create build and deploy folders if they don't exist
mkdir -p build/
mkdir -p deploy/

# Navigate to build folder and run cmake, make
cd build/
cmake ..
make

# Copy generated binary to deploy folder
cp Exe_ExB ../deploy/


