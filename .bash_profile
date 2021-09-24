#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc


export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
# set local bin
export PATH="$HOME/.local/bin:$PATH"
