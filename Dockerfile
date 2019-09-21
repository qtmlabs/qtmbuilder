FROM debian:unstable

RUN dpkg --add-architecture armhf
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install sudo build-essential gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf cmake ninja-build git python wget curl qemu-user libc6:armhf libstdc++6:armhf zlib1g-dev zlib1g-dev:armhf libssl-dev:armhf libssl-dev pkg-config patch

USER root
