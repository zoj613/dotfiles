#!/usr/bin/env bash


echo "Beginning Machine setup..."

source ./install_packages.sh
source ./install_powerline.sh
source ./install_pyenv.sh
source ./symlink.sh
source ./install_vundle.sh
source ./cmus_gruvbox_theme.sh

yay -c --noconfirm  # deleting uneeded dependencies using the `yc` alias

figlet "SET UP COMPETE ! !"

# reload the shell
exec $SHELL

