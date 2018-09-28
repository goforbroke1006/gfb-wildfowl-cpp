#!/usr/bin/env bash

BUILD_DIR=./cmake-build-debug

mkdir -p ${BUILD_DIR}
cmake --build ${BUILD_DIR} --target all
cd ${BUILD_DIR}
make
sudo make install
sudo ldconfig