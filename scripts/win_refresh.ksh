#!/usr/bin/sh

# this will sync whatever new items are added to the bundle directory as well 
# as .vimrc and _vimrc files to the cloned folder so that it be pushed back.

rsync /cygdrive/c/Vim/_vimrc /cygdrive/c/vimstuff/_vimrc
rsync -r /cygdrive/c/Vim/vim80/bundle/* /cygdrive/c/vimstuff/bundle/