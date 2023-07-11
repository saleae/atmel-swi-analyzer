#!/usr/bin/env bash

# Path to THIS script
SCRIPT_PATH=`dirname $0`
SCRIPT_PATH=`readlink -e $SCRIPT_PATH`

docker build --build-arg UID=`id -u` --build-arg GID=`id -g` -t analyzer-build $SCRIPT_PATH