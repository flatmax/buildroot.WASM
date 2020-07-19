#! /bin/bash

pushd /usr/local/emsdk-portable/clang/e1.38.20_64bit
ln -s . bin
ln -s clang temp-gcc
popd
