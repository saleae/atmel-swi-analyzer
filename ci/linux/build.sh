#!/usr/bin/env bash

mkdir build
pushd build
cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build .
popd