#!/usr/bin/env bash

# Setup powerline
yay -S --needed --noconfirm go
# set go execution path
mkdir -p $HOME/go $HOME/go-dev
export GOPATH=$HOME/go:$HOME/go-dev
# get powerline from github and install in "GOPATH" it using go
go get -u -v github.com/justjanne/powerline-go

