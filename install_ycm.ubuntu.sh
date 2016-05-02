#!/bin/bash
#########################################################################
# Author: neofung(http://blog.csdn.net/neofung)
# Created Time: 2014年05月18日 星期日 16时52分30秒
# File Name: install_ycm.ubuntu.sh
# Description: 
#########################################################################

sudo apt-get install -y build-essential cmake \
    python-dev libclang-dev \
    vim-addon-manager vim-youcompleteme

vam install youcompleteme

