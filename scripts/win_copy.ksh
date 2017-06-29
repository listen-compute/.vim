
if [[ ! -d  /cygdrive/c/Vim/vim80/bundle ]]; then
  mkdir -p /cygdrive/c/Vim/vim80/bundle
fi


cp /cygdrive/c/vimstuff/autoload/pathogen.vim /cygdrive/c/Vim/vim80/autoload
cp -r /cygdrive/c/vimstuff/bundle/* /cygdrive/c/Vim/vim80/bundle
cp /cygdrive/c/vimstuff/_vimrc /cygdrive/c/Vim/
