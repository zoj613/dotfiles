#!/usr/bin/env bash

# Install extra packages that are uncecessary during initial setup
# and those that take a while to build/install

#essential
yi gparted

# development
yi zeal-git sublime-text-dev gummi cblas
yii openblas


# audio
yi gstreamer gmusicbrowser flaccuraterip dr14_tmeter easytag ffmpeg flac


# desktop packages
yi grsync pdfslicer


# multimedia
yi firefox vlc freetube-vue-git

figlet "extras installed succesfully !"

echo "Please visit https://wiki.manjaro.org/index.php?title=Configure_NVIDIA_(non-free)_settings_and_load_them_on_Startup \
	for details on how to install NVIDIA non-free drivers"
