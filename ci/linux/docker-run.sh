#!/usr/bin/env bash

# Path to THIS script
SCRIPT_PATH=$(dirname $0)
SCRIPT_PATH=$(readlink -e $SCRIPT_PATH)
REPO_ROOT=$SCRIPT_PATH/../..

docker run --rm -v${REPO_ROOT}:/workspace/analyzer -u docker:docker analyzer-build ./ci/linux/build.sh