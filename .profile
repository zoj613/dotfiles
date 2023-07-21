#
# ~/.profile
#
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_DATA_HOME="$HOME"/.local/share

# add local binary path to $PATH
export PATH="$HOME/.local/bin:$PATH"

export QT_QPA_PLATFORMTHEME="gtk3"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_SCALE_FACTOR=1

export EDITOR="$(command -v vim || command -v vi)"
export VISUAL=${EDITOR}
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER="$(command -v chromium)"
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
# set poetry path
export PATH="$HOME/.poetry/bin:$PATH"
# pyenv variables
export PYENV_ROOT=$XDG_DATA_HOME/pyenv
export PATH="$PYENV_ROOT/shims:$PATH"
export PATH="$PYENV_ROOT/bin:$PATH"
# golang variables
export GOPATH="$XDG_DATA_HOME"/go
export PATH="$GOPATH/bin:$PATH"
# less formating
export LESS='-R --use-color -Dd+y$Du+g'
# do not put nodejs history log in root of home directory
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export NVM_DIR="$XDG_DATA_HOME"/nvm
# ensure aws-cli config files can be stored and read from .config/aws
export AWS_SHARED_CREDENTIALS_FILE="$XDG_CONFIG_HOME"/aws/credentials
export AWS_CONFIG_FILE="$XDG_CONFIG_HOME"/aws/config
# set directory for pass's .password-store file
# export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass

export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter

export NOTMUCH_CONFIG="$XDG_CONFIG_HOME"/notmuch/notmuchrc
export NMBGIT="$XDG_DATA_HOME"/notmuch/nmbug
# store Xauthority in runtime directory instead of home root.
# export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

export SQLITE_HISTORY="$XDG_DATA_HOME"/sqlite_history
