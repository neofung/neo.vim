#! /bin/sh

sudo apt-get install build-essential cmake python-dev

mkdir ~/temp
cd ~/temp

mkdir ycm-build
cd ycm-build
cmake clean
cmake -G "Unix Makefiles" \
    -DPATH_TO_LLVM_ROOT=/usr/local/bin \
    . ~/.vim/bundle/YouCompleteMe/cpp
make


