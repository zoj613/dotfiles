#!/usr/bin/env bash

echo "Updating packages...."
sudo pacman-mirrors --fasttrack && sudo pacman -Syyu --noconfirm

echo "Installing system packages..."

sudo pacman -S --needed --noconfirm yay
# Now that yay has been installed we use it as a package manager
alias yi='yay -S --needed --noconfirm --color=auto'

# essential packages
yi git xorg-xrandr curl wget base-devel trash-cli mlocate xorg-xbacklight ufw

# update mlocate database so as to use the locate command
sudo updatedb

# development packages
yi vim r ctags fzf fd termite

# audio packages
yi cmus sox alsa-lib

# desktop packages
yi pcmanfm ttf-inconsolata ttf-droid noto-fonts qpdfview feh

# multimedia
yi youtube-dl firefox

# misc packages
yi neofetch htop figlet redshift

echo "Packages installed successfully"

