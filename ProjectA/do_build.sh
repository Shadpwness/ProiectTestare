#!/bin/bash

echo Creating build and deploy folders..

# Creates build and deploy folders if they don't exist
mkdir -p build/
mkdir -p deploy/

# Navigate to build folder and call cmake, make
cd build/
cmake ..
make

# Copy binary to deploy folder
cp Exe_Ex ../deploy/


