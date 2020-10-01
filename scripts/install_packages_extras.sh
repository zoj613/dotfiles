#!/usr/bin/env bash

# Install extra packages that are uncecessary during initial setup
# and those that take a while to build/install

#essential
yi gparted

# development
yi zeal-git sublime-text-3 gummi cblas
yii openblas


# audio
yi gstreamer gmusicbrowser dr14_tmeter mediainfo easytag ffmpeg flac cdrip-tools


# desktop packages
yi grsync pdfslicer cmatrix


# multimedia
yi firefox vlc freetube-vue-git

figlet "extras installed succesfully !"

echo "Please visit https://wiki.manjaro.org/index.php?title=Configure_NVIDIA_(non-free)_settings_and_load_them_on_Startup \
	for details on how to install NVIDIA non-free drivers"
