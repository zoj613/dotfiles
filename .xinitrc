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

xrandr --auto --output LVDS1 --primary --mode 1366x768 \
    --output HDMI1 --mode 1920x1080 --right-of LVDS1 &
xautolock -time 15 -locker blurlock &
redshift &
# MPD daemon start (if no other user instance exists)
# [ ! -s ~/.config/mpd/pid ] && mpd
nitrogen --set-scaled --head=0 ${HOME}/dotfiles/scripts/img/wallpaper.jpg &
nitrogen --set-scaled --head=1 ${HOME}/dotfiles/scripts/img/wallpaper.jpg &
picom -f --config $HOME/.config/picom/picom.conf &
exec "$windowmanager"
