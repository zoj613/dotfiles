#!/bin/bash

xrandr --auto --output LVDS1 --primary --mode 1366x768 \
    --output HDMI1 --mode 1920x1080 --right-of LVDS1 &

# run file manager in the background to automout external drives
pcmanfm -d &
safeeyes &
redshift &
