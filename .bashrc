# Include other sources
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases


# set poetry path
export PATH="$HOME/.poetry/bin:$PATH"
# set posgresql path
export PATH="/usr/local/pgsql/bin:$PATH"
# set terminal colors
export TERM="xterm-termite"
# set variable used by i3-sensible-terminal to point to preferred terminal
export TERMINAL="termite"

# command history size limit
HISTSIZE=10000
HISTFILESIZE=20000


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
function spec { sox "$@" -n spectrogram -t "$@"; }


# use arverify to verify accuraterip checksums of flac files in a directory
function arv {
    local dir=${@:-$PWD}
    local logfile="${dir}"/accuraterip.log
    local out=$(arverify -v "${dir}"/*.flac)
    # early exit if arverify command did not work
    # this will occur when the out variable contains only 2 lines
    if [ "$(echo "$out" | wc -l)" == "2" ]; then
        return 1
    fi
    # cleanup and remove path names in log file
    local IFS_BAK=$IFS
    IFS=$'\n'
    for i in $out; do
        if [[ "$i" =~ ".flac" ]]; then
            echo "" >> $logfile
            basename "$i" >> $logfile
        else
            echo "$i" >> $logfile
        fi
    done
    IFS=$IFS_BAK
}
# fix offset of lossless music files
function ofix { fixoffset -f flac $1 *.${2:-flac}; }


# burn iso to usb using diskdestroyer
function writeusb { sudo dd bs=4M if=$1 of=$2 status=progress oflag=sync; }


# Powerline-go setup
export GOPATH="$HOME/.local"
function _update_ps1 {
    PS1="$($GOPATH/bin/powerline-go -error $? -hostname-only-if-ssh -newline \
        -theme gruvbox -cwd-max-depth 4)"
}

if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi


# configure fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f ~/.fzf.completion.bash ] && source ~/.fzf.completion.bash

export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'  # include hidden files
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type d --hidden --exclude .git"
# automatically selects the item if there's only one
export FZF_CTRL_T_OPTS="--select-1 --exit-0"
# cf - fuzzy cd from anywhere (source: https://github.com/junegunn/fzf/wiki/examples)
function cf {
  local file

  file="$(locate -Ai -0 $@ | grep -z -vE '~$' | fzf --read0 -0 -1)"

  if [[ -n $file ]]
  then
     if [[ -d $file ]]
     then
        cd -- $file
     else
        cd -- ${file:h}
     fi
  fi
}

# fuzzy open with vim from anywhere (source: https://github.com/junegunn/fzf/wiki/examples)
function vff {
  local file

  file="$(locate -Ai -0 $@ | grep -z -vE '~$' | fzf --read0 -0 -1 -m)"

  if [[ -n $file ]]
  then
     vim -- $file
     print -l $file[1]
  fi
}

# peek into a subsequent directory using fzf
function pf {
    local cd_dir=$(__fzf_cd__)
    local dir="${cd_dir#*"cd"}"  # remove "cd" from string

    if ! [ -z "$dir" ]; then
        tree ${dir} -l --filelimit=30
    fi
}

