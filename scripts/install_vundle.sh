#!/usr/bin/env bash

echo "Installing vim plugins..."
git clone https://github.com/VundleVim/Vundle.vim.git ${HOME}/.vim/bundle/Vundle.vim

vim -s +PluginInstall +qall

echo "Successfully installed vim plugins!"

