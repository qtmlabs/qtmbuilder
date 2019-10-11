#!/bin/sh -x

wget https://download.qemu.org/qemu-4.1.0.tar.xz
tar xf qemu-4.1.0.tar.xz
cd qemu-4.1.0
./configure --prefix=/usr/local --target-list=arm-linux-user
make -j$(nproc)
make install
cd ..
rm -rf qemu-4.1.0
rm -f qemu-4.1.0.tar.xz
