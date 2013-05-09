#! /bin/sh

sudo apt-get install build-essential cmake python-dev

mkdir ~/temp
cd ~/temp

mkdir ycm-build
cd ycm-build
make clean
cmake -G "Unix Makefiles" \
    -DPATH_TO_LLVM_ROOT=/usr/local \
    . ~/.vim/bundle/YouCompleteMe/cpp
make ycm_core
make


