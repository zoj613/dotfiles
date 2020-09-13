#!/usr/bin/env bash

git clone https://github.com/VundleVim/Vundle.vim.git ${HOME}/.vim/bundle/Vundle.vim

echo "Installing vim plugins..."

vim +PluginInstall +qall

echo "Successfully installed vim plugins!"

