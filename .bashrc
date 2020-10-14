# command history size limit
HISTSIZE=10000
HISTFILESIZE=20000

# set poetry path
export PATH="$HOME/.poetry/bin:$PATH"
# set posgresql path
export PATH="/usr/local/pgsql/bin:$PATH"
# set terminal colors
export TERM="xterm-termite"
# set variable used by i3-sensible-terminal to point to preferred terminal
export TERMINAL="xterm-termite"

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

# load FZF config
[[ -f ~/.bash_fzf ]] && . ~/.bash_fzf

# load pyenv config
[[ -f ~/.bash_pyenv ]] && . ~/.bash_pyenv
