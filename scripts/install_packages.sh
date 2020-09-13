#!/usr/bin/env bash

echo "Updating packages...."
sudo pacman -Syu --noconfirm


echo "Installing system packages..."
sudo pacman -S yay
# Now that yay has been installed we use it as a package manager
alias yi='yay -S --needed --noconfirm'

# essentiial packages
yi git vim htop

# development packages
yi gummi zeal-git sublime-text-dev gummi

# audio packages
yi cmus sox gmusicbrowser alsa-lib dr14_tmeter flaccuraterip

# desktop packages
yi grync pcmanfm nordic-theme-git pdfslicer

# multimedia
yi firefox youtube-dl freetube-vue-git

# extra packages
yi neofetch

echo "Packages installed successfully"

