#!/bin/bash

# Create deploy folder in root folder
mkdir -p deploy/

# For every folder
for f in *; do
    # If folder exists
    if [ -d "$f" ]; then
        echo "$f"
        # If folder has do_build.sh script
        if [ -f $f/do_build.sh ]; then
            # Navigate to given folder
            cd $f/

            # Execute build script
            bash ./do_build.sh

            # Copy generated binary/binaries to root deploy folder
            cp deploy/* ../deploy/
            cd ..
        fi
    fi
done