#!/usr/bin/env bash


echo "Beginning Machine setup..."

source ./install_packages.sh
source ./install_powerline.sh
source ./install_pyenv.sh
source ./symlink.sh
source ./configure_i3blocks.sh
source ./install_vimplug.sh
source ./cmus_gruvbox_theme.sh
source ./configure_fzf.sh
source ./theming.sh
source ./configure_firewall.sh
source ./configure_file_manager.sh

# copy over the hdparm rule script, needs sudo permissions
sudo cp ./69-hdparm.rules /etc/udev/rules.d/69-hdparm.rules

yay -Yc --noconfirm  # deleting uneeded dependencies

figlet "SET UP COMPETE ! !"

# reload the shell
exec $SHELL

