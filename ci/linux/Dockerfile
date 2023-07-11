# Dockerfile for building Saleae analyzers on linux
# This allows us to maintain support for older distros while building on recent distros.

# Use Ubuntu 18.04 as the base image
FROM ubuntu:18.04

# Set environment variables to avoid any interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# UID and GID are generally used to create a user with the same user and group ids as the user building this Docker image
ARG UID
ARG GID

# Ensure args are set
RUN test -n "$UID"
RUN test -n "$GID"

# Create user
RUN groupadd -g ${GID} docker
RUN useradd -m -u ${UID} -g docker docker

# Update cmake
RUN apt-get update

# Add repository for latest cmake
RUN apt-get -y install ca-certificates gpg wget software-properties-common
RUN wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null
RUN echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ bionic main' | tee /etc/apt/sources.list.d/kitware.list >/dev/null

RUN apt-get -y install software-properties-common

# Add repository for GCC 10
RUN add-apt-repository ppa:ubuntu-toolchain-r/test

RUN apt-get update

RUN apt-get -y install cmake git
RUN apt-get -y install gcc-10 g++-10

ENV CXX=g++-10
ENV CC=gcc-10

RUN mkdir -p /workspace/analyzer
RUN chown docker:docker /workspace

# Set working directory
WORKDIR /workspace/analyzer