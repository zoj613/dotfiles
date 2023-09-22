# command history size limit
HISTSIZE=10000
HISTFILESIZE=20000

# set vi mode
set -o vi
# enable auto cd'ing to a directory
shopt -s autocd
# line wrap on window resize
shopt -s checkwinsize

# Load aliases
[[ -f ~/.config/bash/aliases ]] && . ~/.config/bash/aliases

# load generic functions
[[ -f ~/.config/bash/functions ]] && . ~/.config/bash/functions

# load powerline-go config
[[ -f ~/.config/bash/powerline ]] && . ~/.config/bash/powerline

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/completion ]] && \
    . /usr/share/bash-completion/completion

# load FZF config
[[ -f ~/.config/bash/fzf ]] && . ~/.config/bash/fzf

# load pyenv config
[[ -f ~/.config/bash/pyenv ]] && . ~/.config/bash/pyenv

# add selected aliases to bash completion so I can use them with FZF
if [ -f "/usr/share/bash-complete-alias/complete_alias" ]; then
    . /usr/share/bash-complete-alias/complete_alias
    list=(dot dotd ga gd gr)
    for i in "${list[@]}"; do
        complete -F _complete_alias $i
    done
fi

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE="${HOME}/.local/bin/micromamba";
export MAMBA_ROOT_PREFIX="${HOME}/.local/share/micromamba";
export MAMBARC="${XDG_CONFIG_HOME}/mamba/mambarc";
__mamba_setup="$("$MAMBA_EXE" shell hook --shell bash --prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    if [ -f "${HOME}/micromamba/etc/profile.d/micromamba.sh" ]; then
        . "${HOME}/micromamba/etc/profile.d/micromamba.sh"
    else
        export  PATH="${HOME}/micromamba/bin:$PATH"  # extra space after export prevents interference from conda init
    fi
fi
unset __mamba_setup
# <<< mamba initialize <<<
