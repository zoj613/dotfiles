# File System
# ===========
alias mkdir='mkdir -p'
alias cp='cp -i'  # confirm before overwrite
alias ls='ls -lt --color=auto --group-directories-first --human-readable'  # list files
alias lsa='ls -a'  # list hidden files too
alias dir='dir -Q --color=auto'


# OS and shell
# ============
alias manjaro='cat /etc/lsb-release'  # manjaro release info
alias reload='exec $SHELL'  # restart shell


# Package management
# ==================
alias yay='yay --color=auto'  # default yay settings to avoid repeated commands
alias yu='yay -Syu --noconfirm'  # update packages
alias yi='yay -S --needed --noconfirm'
alias yic='yay -S --needed'
alias yc='yay -c --noconfirm'  # Remove unneeded dependencies
alias ycc='yay -Sc --noconfirm'  # remove old packages from cache directory
alias yr='yay -R'
alias ys='yay -Ss'


# Git
# ===
alias gc='git commit -m'
alias gp='git push'
alias ga='git add -u'
alias gr='git rm'
alias gs='git status -s -b'
alias gl='git log'
alias gb='git checkout'
alias gbn='git checkout -b'


# Tools
# =====
alias sub='LANG=en_US.UTF-8 subl3'  # sublimetext
# dr14_tmeter command for calculating dynamic range of music files
alias dr14='dr14_tmeter -1'
alias nf='neofetch'
alias frip='flaccuraterip -sv'

