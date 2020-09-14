#!/usr/bin/env bash

echo "Updating packages...."
sudo pacman-mirrors --fasttrack && sudo pacman -Syyu

echo "Installing system packages..."

sudo pacman -S --needed --noconfirm yay
# Now that yay has been installed we use it as a package manager
alias yi='yay -S --needed --noconfirm --color=auto'

# essentiial packages
yi git

# development packages
yi vim r

# audio packages
yi cmus sox alsa-lib

# desktop packages
yi pcmanfm ttf-inconsolata ttf-droid noto-fonts

# multimedia
yi youtube-dl

# misc packages
yi neofetch htop figlet

echo "Packages installed successfully"

