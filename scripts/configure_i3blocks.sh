#!/usr/bin/env bash

alias yi='yay -S --needed --noconfirm'

yi i3blocks 

# clone block scripts from github repo into config folder
git clone https://github.com/zoj613/i3blocks-contrib ~/.config/i3blocks

# give necessary execution permission to some scripts
chmod +x ~/.config/i3blocks/calendar/calendar

# Now install all dependencies needed by the blocks
# for battery status
yi acpi
# for calendar
yi yad xdotool
# for github
yi github-cli otf-font-awesome ttf-font-awesome
# for cpu_usage
yi sysstat
