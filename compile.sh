#!/bin/bash

# Delete old output, in case someone runs this script more than once.
rm -rf output/

# Prepare a folder for the compilation results.
mkdir -p output

# Run the compilation process.
docker run -ti --rm -v $PWD/output:/opt/ue4 -w /opt/ue4 connorlanigan/unrealengine-docker
