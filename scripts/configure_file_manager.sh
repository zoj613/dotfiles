#!/usr/bin/env bash

# install all tthe necessary packages needed
yay -S --needed --noconfirm dragon-drag-and-drop 

# download icons
wget -P ~/.config/vifm/ https://raw.githubusercontent.com/cirala/vifm_devicons/master/favicons.vifm
# download colorscheme
 wget -P ~/.config/vifm/colors https://raw.githubusercontent.com/vifm/vifm-colors/master/gruvbox.vifm

 # remove .vifm directory if automatically created during installation of vifm
 rm -rf $HOME/.vifm/
