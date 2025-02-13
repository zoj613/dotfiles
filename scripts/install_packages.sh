#!/usr/bin/env bash

echo "Updating packages...."
sudo pacman-mirrors --fasttrack && sudo pacman -Syyu --noconfirm

echo "Installing system packages..."

sudo pacman -S --needed --noconfirm yay
# Now that yay has been installed we use it as a package manager
alias yi='yay -S --needed --noconfirm --color=auto'

# essential packages
yi git xorg-xinit xorg-xrandr curl wget base-devel i3-gaps i3blocks trash-cli mlocate ufw \
    dmenu dunst xorg-xbacklight feh i3exit xterm netctl \
    xf86-input-synaptics gnupg pass pass-update pass-otp passff-host pam-gnupg ntfs-3g \
    qt5ct qt5-styleplugins picom sg3_utils chrony networkmanager-dispatcher-chrony \
    netctl-dispatcher-chrony

# update mlocate database so as to use the locate command
sudo updatedb

# development packages
yi gvim ctags fzf fd alacritty vifm tmux

# audio packages
yi mpd mpc ncmpcpp sox alsa-lib alsa-utils pulsemixer gst-libav

# fonts
yi ttf-inconsolata-nerd ttf-droid noto-fonts ttf-iosevka-nerd

# desktop packages
yi zathura zathura-pdf-mupdf sxiv neomutt i3-scrot xclip blueman xautolock

# multimedia
yi youtube-dl chromium mpv newsboat

# misc packages
yi neofetch htop figlet redshift bash-completion bash-complete-alias

echo "Packages installed successfully"
