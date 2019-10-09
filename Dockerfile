FROM msizanoen/armv7-linux-rs:130

USER root

COPY sources.list /tmp/sources.list
RUN cat /tmp/sources.list > /etc/apt/sources.list
RUN dpkg --add-architecture armhf
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y \
        sudo \
        build-essential \
        cmake \
        ninja-build \
        git \
        python \
        wget \
        curl \
        zlib1g-dev \
        pkg-config \
        lsb-release \
        software-properties-common \
        patch \
        libc6:armhf \
        libstdc++6:armhf \
        zlib1g:armhf \
        unzip

RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
RUN echo "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-9 main" >> /etc/apt/sources.list
RUN echo "deb-src http://apt.llvm.org/xenial/ llvm-toolchain-xenial-9 main" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y llvm-9-dev
