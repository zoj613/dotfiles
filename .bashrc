# command history size limit
HISTSIZE=10000
HISTFILESIZE=20000

# allow spawning another terminal inside the current directory
if [[ $TERM == xterm-termite ]]; then
  . /etc/profile.d/vte.sh
  __vte_prompt_command
fi

# Load aliases
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

# load generic functions
[[ -f ~/.bash_functions ]] && . ~/.bash_functions

# load powerline-go config
[[ -f ~/.bash_powerline ]] && . ~/.bash_powerline

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

# load FZF config
[[ -f ~/.bash_fzf ]] && . ~/.bash_fzf

# load pyenv config
[[ -f ~/.bash_pyenv ]] && . ~/.bash_pyenv

# add selected aliases to bash completion so I can use them with FZF
if [ -f "/usr/share/bash-complete-alias/complete_alias" ]; then
    . /usr/share/bash-complete-alias/complete_alias
    list=(dot dotd ga gd gr)
    for i in "${list[@]}"; do
        complete -F _complete_alias $i
    done
fi

# set bumblebee status token for gh notifications
export GIT_BUMBLEBEESTATUS_TOKEN=$(cat ~/GIT_BUMBLEBEESTATUS_TOKEN)
