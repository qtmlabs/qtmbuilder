#!/bin/bash
set -ex

url="http://crosstool-ng.org/download/crosstool-ng/crosstool-ng-1.24.0.tar.xz"
curl -Lf $url | tar xzf -
cd crosstool-ng-1.24.0
./configure --prefix=/usr/local
make -j$(nproc)
make install
cd ..
rm -rf crosstool-ng-1.24.0

mkdir -p /tmp/work
cd /tmp/work
cp /tmp/riscv.config .config
ct-ng build
