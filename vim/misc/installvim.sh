#!/usr/bin/env bash
hg clone https://vim.googlecode.com/hg/ /home/classics/vim
cd vim/src
./configure --enable-pythoninterp --with-features=huge -prefix=$HOME/opt/vim
make
make install
mkdir -p $HOME/bin
cd $HOME/bin
ln -s $HOME/opt/vim/bin/vim
