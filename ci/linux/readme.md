# Linux Analyzer CI Build

In order to maintain compatibility with older distributions of Linux, we build our release binaries using docker.

This allows us to control the glibc and libstdc++ dependencies of our binaries, and ensure that they will run on older distributions.

This is done in two steps.

First, we create a docker image. the Dockerfile and docker-build.sh configure the image with the necessary software.

Second, we run the image using docker-run.sh and build.sh.

This can be done locally, but it is not required for local development.
