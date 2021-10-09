#!/bin/bash

xrandr --auto --output LVDS1 --primary --mode 1366x768 \
    --output HDMI1 --mode 1920x1080 --right-of LVDS1 &

safeeyes &
redshift &
# MPD daemon start (if no other user instance exists)
# [ ! -s ~/.config/mpd/pid ] && mpd
nitrogen --set-zoom-fill ~/dotfiles/scripts/img/wallpaper.jpg &
