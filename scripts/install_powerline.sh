#!/usr/bin/env bash

# Install powerline-fonts from github
#yay -S --needed --noconfirm powerline-font
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# Now install powerline-shell
#pip install powerline-shell
git clone https://github.com/b-ryan/powerline-shell
cd powerline-shell
python setup.py install
cd ..
rm -rf powerline-shell

