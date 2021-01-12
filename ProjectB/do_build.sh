#!/bin/bash

echo Creating build and deploy folders..

mkdir -p build/
mkdir -p deploy/

cd build/
cmake ..
make
cp Exe_ExB ../deploy/


