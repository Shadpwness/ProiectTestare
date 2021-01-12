#!/bin/bash

mkdir -p deploy/

for f in *; do
    if [ -d "$f" ]; then
        echo "$f"
        if [ -f $f/do_build.sh ]; then
            cd $f/
            bash ./do_build.sh
            cp deploy/* ../deploy/
            cd ..
        fi
    fi
done