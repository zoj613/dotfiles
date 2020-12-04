#!/usr/bin/env bash

# Install extra packages that are uncecessary during initial setup
# and those that take a while to build/install

#essential
yi gparted

# development
yay -Rdd blas
yi zeal-git gummi openblas-lapack


# audio
yi gstreamer gmusicbrowser-git dr14_tmeter mediainfo easytag ffmpeg flac cdrip-tools


# desktop packages
yi rsync pdfslicer cmatrix


# multimedia
yi vlc freetube

figlet "extras installed succesfully !"

echo "Please visit https://wiki.manjaro.org/index.php?title=Configure_NVIDIA_(non-free)_settings_and_load_them_on_Startup \
	for details on how to install NVIDIA non-free drivers"
