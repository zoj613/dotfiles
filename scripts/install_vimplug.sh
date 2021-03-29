#!/usr/bin/env bash

# install Language Servers and other vim specific sytem packages
yay -S --needed --noconfirm python-language-server vim-language-server shfmt \
    bashate bash-language-server clang r-lintr texlab

echo "Installing vim plugins..."
curl -fLo ${HOME}/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall

echo "Successfully installed vim plugins!"

