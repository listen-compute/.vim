
if [[ ! -d  /cygdrive/c/vim/vim80/bundle ]]; then
  mkdir -p /cygdrive/c/vim/vim80/bundle
fi

cp /cygdrive/c/vimstuff/autoload/pathogen.vim /cygdrive/c/vim/vim80/autoload
cp -r /cygdrive/c/vimstuff/bundle/* /cygdrive/c/vim/vim80/bundle
cp /cygdrive/c/vimstuff/_vimrc /cygdrive/c/vim/vim80/
