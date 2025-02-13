#!/usr/bin/env bash

# install all tthe necessary packages needed
yay -S --needed --noconfirm dragon-drop wget ueberzug poppler

# download icons
wget -P ~/.config/vifm/ https://raw.githubusercontent.com/cirala/vifm_devicons/master/favicons.vifm
# download colorscheme
 wget -P ~/.config/vifm/colors https://raw.githubusercontent.com/vifm/vifm-colors/master/gruvbox.vifm

# setup ueberzug for previews of various file formats
# wget -P ~/.local/bin/ https://raw.githubusercontent.com/cirala/vifmimg/master/vifmimg
# wget -P ~/.local/bin/ https://raw.githubusercontent.com/cirala/vifmimg/master/vifmrun
# chmod +x ~/.local/bin/vifmimg ~/.local/bin/vifmrun

 # remove .vifm directory if automatically created during installation of vifm
 rm -rf $HOME/.vifm/
