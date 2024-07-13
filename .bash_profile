#
# ~/.bash_profile
#

[[ -f ~/.profile ]] && . ~/.profile
[[ -f ~/.bashrc ]] && . ~/.bashrc

# opam configuration
test -r /home/zoj/.opam/opam-init/init.sh && . /home/zoj/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
