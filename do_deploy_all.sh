#!/bin/bash

# Update path to match personal VM
ssh_path="leventevm@127.0.0.1:/home/leventevm/"

# Copy binaries to VM
sudo scp -P 5679 -pr deploy/ $ssh_path