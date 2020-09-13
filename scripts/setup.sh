#!/usr/bin/env bash


echo "Beginning Machine setup..."

source ./symlink.sh
source ./install_packages.sh
source ./install_vundle.sh
source ./install_powerline.sh
source ./install_pyenv.sh

yay -c --noconfirm  # deleting uneeded dependencies using the `yc` alias

figlet "Set up compete ! !"

# reload the shell
exec $SHELL

