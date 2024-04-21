#!/bin/bash  -xue

# CPPUNIT
mkdir  /tmp/build
pushd  /tmp/build
tar    -xzvf  /tmp/data/cppunit-1.15.1.tar.gz
cd     cppunit-1.15.1/
./configure  --prefix=/tools/cppunit/1.15.1  \
    --disable-shared  --enable-static        \
    &&  make  &&  make  install
popd

# CMAKE
pushd  /tmp/build
tar    -xzvf  /tmp/data/cmake-3.0.2.tar.gz
cd     cmake-3.0.2/
./configure  --prefix=/tools/cmake/3.0.2  \
    &&  make  &&  make  install
popd
