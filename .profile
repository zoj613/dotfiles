#
# ~/.profile
#

export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_SCALE_FACTOR=1
export EDITOR="$(command -v vim || command -v vi)"
export VISUAL=${EDITOR}
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER="$(command -v firefox)"
# used by i3-sensible-terminal script to pick the preferred terminal in i3
export TERMINAL="termite"

# set poetry path
export PATH="$HOME/.poetry/bin:$PATH"
# set posgresql path
export PATH="/usr/local/pgsql/bin:$PATH"
# set terminal colors
export TERM="xterm-termite"
# set bumblebee status token for gh notifications
export GIT_NOTIF_TOKEN=$(cat ~/GIT_BUMBLEBEESTATUS_TOKEN)
