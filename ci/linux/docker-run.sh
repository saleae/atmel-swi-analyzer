#!/usr/bin/env bash

# This script runs the build.sh script within the docker image, mounting the current repository as a volume.

# Path to THIS script
SCRIPT_PATH=$(dirname $0)
SCRIPT_PATH=$(readlink -e $SCRIPT_PATH)
REPO_ROOT=$SCRIPT_PATH/../..

docker run --rm -v${REPO_ROOT}:/workspace/analyzer -u docker:docker analyzer-build ./ci/linux/build.sh