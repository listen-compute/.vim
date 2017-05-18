#!/bin/ksh

echo Creating Symbolic Links:

    ln -s ~/.vim/.vimrc ~/.vimrc
    ln -s ~/.vim/.gvimrc ~/.gvimrc

echo "Initializing and updating submodules".

    git submodule init
    git submodule update

echo "Setup is complete. Thank You. =]"
