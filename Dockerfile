FROM msizanoen/armv7-linux-rs:130

USER root

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
        unzip
