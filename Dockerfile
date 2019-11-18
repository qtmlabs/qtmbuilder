FROM debian:10

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
        lsb-release \
        software-properties-common \
        patch \
        libtool-bin \
        help2man \
        libncurses-dev \
        texinfo \
        xz-utils \
        flex \
        bison \
        gperf \
        gawk \
        unzip
RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
RUN echo "deb http://apt.llvm.org/buster/ llvm-toolchain-buster-9 main" >> /etc/apt/sources.list
RUN echo "deb-src http://apt.llvm.org/buster/ llvm-toolchain-buster-9 main" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y llvm-9-dev

USER root
