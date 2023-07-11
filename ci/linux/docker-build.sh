#!/usr/bin/env bash

# This script builds the docker image using the Dockerfile in this directory.

# We pass in the user and group ID, so that later when we run docker, we can ensure that all created files are owned by the current user.

# Path to THIS script
SCRIPT_PATH=`dirname $0`
SCRIPT_PATH=`readlink -e $SCRIPT_PATH`

docker build --build-arg UID=`id -u` --build-arg GID=`id -g` -t analyzer-build $SCRIPT_PATH