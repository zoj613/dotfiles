# Include other sources
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases


# set poetry path
export PATH="$HOME/.poetry/bin:$PATH"
# set posgresql path
export PATH="/usr/local/pgsql/bin:$PATH"
# set terminal colors
export TERM="xterm-256color"

# command history size limit
HISTSIZE=10000
HISTFILESIZE=20000


# setup script for gruvbox color scheme on vim
source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"


# Pyenv config
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi


# from https://colindcarroll.com/2017/10/14/handling-multiple-python-versions/
# virtualenv shortcuts via pyenv
function virtualenv_name { echo "${PWD##*/}" ; }
function vn () { pyenv virtualenv $1 "$(virtualenv_name)" ; }
function va { pyenv activate "$(virtualenv_name)" ; }
alias vd='pyenv deactivate'
function vdd { pyenv uninstall "$(virtualenv_name)" ; }


# sox function for displying spectrogram of a music file
function spec () { sox "$@" -n spectrogram -t "$@"; }
# search for command in history using keyword
function hist () { history | grep "$@"; }

function fripf {
	frip "${@}"/*.flac >> "${@}"/flaccuraterip.log
}

function writeusb {
	sudo dd bs=4M if=$1 of=$2 status=progress oflag=sync
}

# Powerline (Rust version)
function prompt {
    PS1="$(powerline-rs --shell bash $?)"
}
PROMPT_COMMAND=prompt

