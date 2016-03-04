#!/bin/bash
mkdir tmp
mkdir undo
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo 'source ~/.vim/vimrc' > ~/.vimrc
vim +PluginInstall +qall
