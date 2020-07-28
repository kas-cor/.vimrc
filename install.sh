#!/bin/bash
git clone https://github.com/kas-cor/.vimrc.git ~/.vim
cd ~/.vim
mkdir tmp
mkdir undo
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo 'source ~/.vim/vimrc' > ~/.vimrc
vim +PlugInstall +qall
