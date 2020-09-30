#!/usr/bin/env bash

echo "Updating packages...."
sudo pacman-mirrors --fasttrack && sudo pacman -Syyu --noconfirm

echo "Installing system packages..."

sudo pacman -S --needed --noconfirm yay
# Now that yay has been installed we use it as a package manager
alias yi='yay -S --needed --noconfirm --color=auto'

# essential packages
yi git xorg-xrandr curl wget base-devel trash-cli

# development packages
yi vim r ctags fzf fd

# audio packages
yi cmus sox alsa-lib

# desktop packages
yi pcmanfm ttf-inconsolata ttf-droid noto-fonts qpdfview

# multimedia
yi youtube-dl

# misc packages
yi neofetch htop figlet

echo "Packages installed successfully"

