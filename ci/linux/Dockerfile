FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y g++-9 cmake build-essential git && \
    apt-get clean

WORKDIR /app

COPY . /app

RUN cmake -B build -DCMAKE_BUILD_TYPE=Release && \
    cmake --build build
