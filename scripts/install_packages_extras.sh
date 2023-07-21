#!/usr/bin/env bash

# Install extra packages that are uncecessary during initial setup
# and those that take a while to build/install


# development
# yay -Rdd blas
# yi zeal-git openblas-lapack-git


# audio
yi gstreamer dr14_tmeter mediainfo ffmpeg flac audacious-gtk3 deadbeef # cdrip-tools

# setup cd-tools to use arverify and fixoffset scripts and ensure mandatory packages are installed
git clone https://github.com/zoj613/cdrip-tools.git ~/dev/
yi sox ffmpeg libsndfile

# desktop packages
yi rsync 


# multimedia
yi vlc freetube

figlet "extras installed succesfully !"

echo "Please visit https://wiki.manjaro.org/index.php?title=Configure_NVIDIA_(non-free)_settings_and_load_them_on_Startup \
	for details on how to install NVIDIA non-free drivers"
