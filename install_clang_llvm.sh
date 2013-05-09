#! /bin/sh

sudo apt-get install build-essential cmake python-dev

mkdir temp
cd ./temp

svn co http://llvm.org/svn/llvm-project/llvm/trunk llvm
cd llvm/tools
svn co http://llvm.org/svn/llvm-project/cfe/trunk clang
cd ../..
cd llvm/projects
svn co http://llvm.org/svn/llvm-project/compiler-rt/trunk compiler-rt
cd ../..
mkdir llvm-build
cd llvm-build
../llvm/configure
make

