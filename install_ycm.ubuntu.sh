#!/bin/bash
#########################################################################
# Author: neofung(http://blog.csdn.net/neofung)
# Created Time: 2014年05月18日 星期日 16时52分30秒
# File Name: install_ycm.sh
# Description: 
#########################################################################

sudo apt-get install build-essential cmake \
    python-dev python-devel libclang-dev

cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive

mkdir ~/temp
cd ~/temp

mkdir ycm_build
cd ycm_build
make clean
cmake -G "Unix Makefiles" \
    -DUSE_SYSTEM_LIBCLANG=ON \
    . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
make ycm_core
make ycm_support_libs
make
