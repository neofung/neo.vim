#! /bin/sh

sudo apt-get install build-essential cmake python-dev

mkdir temp
cd ./temp

mkdir ycm-build
cd ycm-build
cmake -G "Unix Makefiles" \
    -DPATH_TO_LLVM_ROOT=~/.vim/temp/llvm-bulid \
    . ~/.vim/bundle/YouCompleteMe/cpp
make


