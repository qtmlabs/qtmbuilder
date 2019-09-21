FROM debian:unstable

RUN dpkg --add-architecture armhf
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y \
        sudo \
        build-essential \
        gcc-arm-linux-gnueabihf \
        g++-arm-linux-gnueabihf \
        cmake \
        ninja-build \
        git \
        python \
        wget \
        curl \
        qemu-user \
        libc6:armhf \
        libstdc++6:armhf \
        zlib1g-dev:armhf \
        zlib1g-dev \
        libssl-dev:armhf \
        libssl-dev \
        pkg-config \
        patch \
        llvm-dev

USER root
