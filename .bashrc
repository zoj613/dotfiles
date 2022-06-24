# command history size limit
HISTSIZE=10000
HISTFILESIZE=20000

# set vi mode
set -o vi

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
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

