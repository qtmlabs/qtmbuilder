FROM msizanoen/armv7-linux-rs:170

USER root

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y -f \
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
        libglib2.0-dev \
        unzip

COPY install-qemu.sh /tmp/install-qemu.sh
RUN bash -x /tmp/install-qemu.sh

RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
RUN echo "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-9 main" >> /etc/apt/sources.list
RUN echo "deb-src http://apt.llvm.org/xenial/ llvm-toolchain-xenial-9 main" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y llvm-9-dev
