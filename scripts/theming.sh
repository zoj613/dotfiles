#!/usr/bin/env bash

alias yi='yay -S --needed --noconfirm'

# install favourite themes for a given desktop environment
if [ "KDE" == "${XDG_CURRENT_DESKTOP}" ]; then
    yi plasma5-themes-maia konsole-gruvbox vimix-theme-kde-git
elif [ "XFCE" == "${XDG_CURRENT_DESKTOP}" ]; then
    yi maia-xfce-icon-theme vimix-gtk-themes
    # set gtk theme, inspired by https://forum.xfce.org/viewtopic.php?id=9431
    xfconf-query -c xsettings -p /Net/ThemeName --set "vimix-dark-beryl"
    xfconf-query -c xsettings -p /Net/IconThemeName --set "maia"
    xfconf-query -c xsettings -p /Net/EnableEventSounds --set false
    xfconf-query -c xsettings -p /Xft/DPI --set 96
    xfconf-query -c xsettings -p /Xft/Antialias --set 1
    xfconf-query -c xsettings -p /Xft/Hinting --set 1
    xfconf-query -c xsettings -p /Xft/HintingStyle --set "hintslight"
    xfconf-query -c xsettings -p /Gtk/FontName --set "Droid Sans 10"
    xfconf-query -c xsettings -p /Gtk/MonospaceFontName \
        --set "Inconsolata for Powerline Medium 12"

    xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorLVDS1/workspace0/last-image \
        --set "$(pwd)/img/wallpaperr.jpg"

    xfconf-query -c displays -p /Default/LVDS1/Resolution --set "1920x1080" || \
        xfconf-query -c displays -p /Default/LVDS1/Resolution --set "1366x768"

    xfconf-query -c xfwm4 -p /general/button_layout --set "CHMO|S"
    xfconf-query -c xfwm4 -p /general/theme --set "vimix-dark-beryl"
    xfconf-query -c xfwm4 -p /general/title_font --set "Droid Sans Bold 10"
    xfconf-query -c xfwm4 -p /general/workspace_count --set 2

    xfconf-query -c xfce4-panel -p /plugins/plugin-3/show-labels --set false
else
    echo "No theming configured for this Desktop environment."
fi

