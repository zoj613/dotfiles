#!/usr/bin/env bash


echo "Beginning Machine setup..."

source ./symlink.sh
source ./install_packages.sh
source ./install_vundle.sh
source ./install_powerline.sh
source ./install_pyenv.sh

# reload the shell
exec $SHELL

yc  # deleting uneeded dependencies using the `yc` alias

figlet "Set up compete ! !"

