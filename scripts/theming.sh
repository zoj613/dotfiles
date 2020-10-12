#!/usr/bin/env bash

alias yi='yay -S --needed --noconfirm'


yi vimix-gtk-themes-git bumblebee-status-git xkb-switch gruvbox-material-icon-theme-git

# apply themes to root applications using symlinks
# https://wiki.archlinux.org/index.php/GTK#Theme_not_applied_to_root_applications
sudo ln -s ${HOME}/.gtkrc-2.0 /etc/gtk-2.0/gtkrc
sudo ln -s ${HOME}/.config/gtk-3.0/settings.ini /etc/gtk-3.0/settings.ini

