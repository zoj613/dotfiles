# File System
# ===========
alias mkdir='mkdir -p'
alias cp='cp -i'  # confirm before overwrite
alias ls='ls -lt --color=auto --group-directories-first --human-readable'  # list files
alias lsa='ls -a'  # list hidden files too
alias lsg='ls -a | grep'
alias dir='dir -Q --color=auto'
alias ..='cd ..'


# OS and shell
# ============
alias manjaro='cat /etc/lsb-release'  # manjaro release info
alias reload='exec $SHELL'  # restart shell
alias grep='grep --color=auto'


# Package management
# ==================
alias yay='yay --color=auto'  # default yay settings to avoid repeated commands
alias yu='yay -Syu --noconfirm --needed'  # update packages
alias yi='yay -S --needed --noconfirm'
alias yii='yay -S --needed --useask'  # when conflicts need to be resolved
alias yc='yay -c --noconfirm'  # Remove unneeded dependencies
alias ycc='yay -Sc --noconfirm'  # remove old packages from cache directory
alias yr='yay -Rs'  # remove packages including deps
alias yrr='yay -Rns'  # remove package including config files and deps
alias yo='yay -Rns $(yay -Qtdq)'
alias yoo='yay -Rns $(yay -Qttdq)'
alias ys='yay -Ss'
alias ysi='yay -Si'


# Git
# ===
alias gc='git commit -m'
alias gp='git push'
alias ga='git add'
alias gaa='ga -u'
alias gr='git rm'
alias gs='git status -s -b'
alias gl='git log'
alias gb='git checkout'
alias gbn='git checkout -b'
alias gd='git diff'


# Tools
# =====
alias sub='LANG=en_US.UTF-8 subl3'  # sublimetext
# dr14_tmeter command for calculating dynamic range of music files
alias dr14='dr14_tmeter -1'
alias nf='neofetch --memory_unit gib --os_arch off --disable model packages resolution cpu gpu'
alias frip='flaccuraterip -sv'

