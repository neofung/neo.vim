#! /bin/sh

sudo yum install cmake python-devel subversion subversion-tools

mkdir ~/temp
cd ~/temp

git clone https://github.com/llvm-mirror/llvm.git llvm
cd ~/temp/llvm/tools
git clone https://github.com/llvm-mirror/clang.git clang
cd ~/temp/llvm/projects
git clone https://github.com/llvm-mirror/compiler-rt.git compiler-rt

cd ~/temp/
mkdir llvm-build
cd ./llvm-build
../llvm/configure --enable-optimized --enable-targets=host-only
make -j4 
sudo make install

