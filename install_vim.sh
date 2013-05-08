mkdir temp
cd ./temp

sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev ruby-dev mercurial 
sudo apt-get remove vim vim-runtime gvim vim-tiny vim-common

#hg clone https://code.google.com/p/vim/
cd vim
make uninstall
make distclean
./configure --with-features=huge \
            --enable-rubyinterp \
            --enable-pythoninterp \
            --enable-perlinterp \
            --enable-gui=gnome2 \
            --enable-cscope \
            --prefix=/usr/local \
            --with-python-config-dir=/usr/lib/python2.7/config/ \
	    --with-compileby="neofung<neo.s.fung.gmail.com>"
make
sudo make install

