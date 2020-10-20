#!/bin/bash

xrandr --auto --output eDP1 --primary --mode 1920x1080 \
    --output HDMI-1-4 --mode 1920x1080 --left-of eDP1 &

# run file manager in the background to automout external drives
pcmanfm -d &
safeeyes &
redshift &

# ~/.fehbg &

