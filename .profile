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
export BROWSER="$(command -v librewolf)"
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
# set poetry path
export PATH="$HOME/.poetry/bin:$PATH"
# pyenv variables
export PATH="$PYENV_ROOT/shims:$PATH"
# golang variables
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
# add local binary path to $PATH
export PATH="$HOME/.local/bin:$PATH"
export EDITOR=$(which vim)
# less formating
export LESS='-R --use-color -Dd+y$Du+g'
