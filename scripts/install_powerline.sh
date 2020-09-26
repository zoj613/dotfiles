#!/usr/bin/env bash

# Setup powerline
yay -S --needed --noconfirm otf-inconsolata-powerline-git go
# set powerline execution path
export GOPATH="$HOME/.local"
# get powerline from github and install in "GOPATH" it using go
go get -u -v github.com/justjanne/powerline-go

