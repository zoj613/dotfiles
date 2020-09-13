#!/usr/bin/env bash


# Install extra packages that are uncecessary during initial setup
# and those that take a while to build/install
alias yi='yay -S --noconfirm --color=auto'

#essential
yi gparted

# development
yi zeal-git sublime-text-dev gummi openblas cblas


# audio
yi gstreamer gmusicbrowser flaccuraterip dr14_tmeter easytag ffmpeg flac


# desktop packages
yi grsync pdfslicer


# multimedia
yi firefox vlc freetube-vue-git



