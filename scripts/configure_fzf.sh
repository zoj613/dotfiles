#!/usr/bin/env bash

# add fzf keybindings for bash shell
curl -#o ${HOME}/.fzf.bash https://raw.githubusercontent.com/junegunn/fzf/master/shell/key-bindings.bash
curl -#o ${HOME}/.fzf.completion.bash https://raw.githubusercontent.com/junegunn/fzf/master/shell/completion.bash
# these  will be sourced inside the bashrc file
