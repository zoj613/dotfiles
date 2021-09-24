#!/usr/bin/env bash


echo "Beginning Machine setup..."

# install yay to make suree
if [ -e $(which yay) ]; then
    echo "YaY is already installed.."
else
    git clone https://aur.archlinux.org/yay.git ${HOME}/
    cd ${HOME}/yay/
    makepkg -sri
    cd -
fi


source ./install_packages.sh
source ./install_powerline.sh
source ./install_pyenv.sh
source ./symlink.sh
source ./configure_i3blocks.sh
source ./install_vimplug.sh
source ./configure_firewall.sh
source ./configure_file_manager.sh
source ./configure_music_player.sh
source ./theming.sh

# copy over the hdparm rule script, needs sudo permissions
sudo cp ./69-hdparm.rules /etc/udev/rules.d/69-hdparm.rules

# setup the display manager
sudo systemctl enable ly.service

yay -Yc --noconfirm  # deleting uneeded dependencies

figlet "SET UP COMPETE ! !"

# reload the shell
exec $SHELL
