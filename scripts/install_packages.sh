#!/usr/bin/env bash

echo "Updating packages...."
sudo pacman-mirrors --fasttrack && sudo pacman -Syyu --noconfirm

echo "Installing system packages..."

sudo pacman -S --needed --noconfirm yay
# Now that yay has been installed we use it as a package manager
alias yi='yay -S --needed --noconfirm --color=auto'

# essential packages
yi git xorg-xrandr curl wget base-devel i3-gaps trash-cli mlocate ufw \
    dmenu dunst xorg-xbacklight lxappearance nitrogen i3exit xterm \
    xf86-input-synaptics gnupg pass pass-update pam-gnupg ly

# update mlocate database so as to use the locate command
sudo updatedb

# development packages
yi vim ctags fzf fd alacritty vifm

# audio packages
yi mpd mpc ncmpcpp sox alsa-lib alsa-utils pavucontrol

# fonts
yi ttf-inconsolata nerd-fonts-inconsolata ttf-droid noto-fonts

# desktop packages
yi pcmanfm zathura zathura-pdf-poppler sxiv neomutt i3-scrot xclip \
    blueman xautolock

# multimedia
yi youtube-dl librewolf-bin ytfzf mpv

# misc packages
yi fastfetch htop figlet redshift bash-completion bash-complete-alias

echo "Packages installed successfully"
