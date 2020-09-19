#!/usr/bin/env bash

alias yi='yay -S --needed --noconfirm'

# make sure org-xrandr is installed for setting resolution in current session
yi org-xrandr


function set_resolution
{
	xfconf-query -c displays --create -t string -p /Default/eDP1/Resolution --set $@
	xrandr -s $@
}

# install favourite themes for a given desktop environment
if [ "KDE" == "${XDG_CURRENT_DESKTOP}" ]; then
    yi plasma5-themes-maia konsole-gruvbox vimix-theme-kde-git
elif [ "XFCE" == "${XDG_CURRENT_DESKTOP}" ]; then
    yi maia-xfce-icon-theme vimix-gtk-themes

    echo "Theming XFCE..."
    # set gtk theme, inspired by https://forum.xfce.org/viewtopic.php?id=9431
    xfconf-query -c xsettings --create -t string -p /Net/ThemeName --set "vimix-dark-beryl"
    xfconf-query -c xsettings --create -t string -p /Net/IconThemeName --set "maia"
    xfconf-query -c xsettings --create -t bool -p /Net/EnableEventSounds --set false
    # xfconf-query -c xsettings -p /Xft/DPI --set 96
    xfconf-query -c xsettings --create -t int -p /Xft/Antialias --set 1
    xfconf-query -c xsettings --create -t int -p /Xft/Hinting --set 1
    xfconf-query -c xsettings --create -t string -p /Xft/HintingStyle --set "hintslight"
    xfconf-query -c xsettings --create -t string -p /Gtk/FontName --set "Droid Sans 10"
    # xfconf-query -c xsettings -p /Gtk/CursorThemeName --set "xcursor-breeze"
    xfconf-query -c xsettings --create -t string -p /Gtk/MonospaceFontName \
        --set "Inconsolata for Powerline Medium 12"

    xfconf-query -c xfce4-desktop --create -t string -p /backdrop/screen0/monitoreDP1/workspace0/last-image \
        --set "$(pwd)/img/wallpaper.jpg"

    [ set_resolution "1920x1080" ] || [ set_resolution "1366x768" ]
    # move window buttons to the left in the orde: close|minimize|maximize
    xfconf-query -c xfwm4 --create -t string -p /general/button_layout --set "CHMO|S"
    xfconf-query -c xfwm4 --create -t string -p /general/theme --set "vimix-dark-beryl"
    xfconf-query -c xfwm4 --create -t string -p /general/title_font --set "Droid Sans Bold 10"
    xfconf-query -c xfwm4 --create -t int -p /general/workspace_count --set 2

    xfconf-query -c xfce4-panel --create -t bool -p /plugins/plugin-3/show-labels --set false
else
    echo "No theming configured for this Desktop environment."
fi

