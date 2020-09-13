#!/usr/bin/env bash

echo "Beginning Machine setup..."

source ./symlink.sh
source ./install_packages.sh
source ./install_vundle.sh
source ./install_powerline.sh
source ./install_pyenv.sh

yc  # deleting uneeded dependencies

figlet "Set up compete ! !"

