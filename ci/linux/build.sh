#!/usr/bin/env bash

# This is run from within the docker container to build the analyer.
mkdir build
pushd build
cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build .
popd