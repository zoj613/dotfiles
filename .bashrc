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

# less formating
export LESS='-R --use-color -Dd+y$Du+g'
