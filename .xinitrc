#!/bin/sh

userresources=$HOME/.config/X11/Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
windowmanager=${1:-i3}

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# TODO: Programmically set the monitor resolution and positioning using
# `xrandr --listmonitors` instead of hardcoding the names and resolutions
xrandr --auto --output LVDS1 --primary --mode 1366x768 \
    --output HDMI1 --mode 1920x1080 --right-of LVDS1 &

NUM_MONITORS=$(xrandr --listmonitors | grep Monitors | awk -F': ' '{print $2}')
for (( i = 0; i < ${NUM_MONITORS}; i++ )); do
    nitrogen --set-scaled --head=${i} ${HOME}/dotfiles/scripts/img/wallpaper.png &
done

xautolock -time 15 -locker blurlock &
redshift &
picom --config $HOME/.config/picom/picom.conf &
# MPD daemon start (if no other user instance exists)
# [ ! -s ~/.config/mpd/pid ] && mpd

exec "$windowmanager"
