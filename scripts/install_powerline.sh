#!/usr/bin/env bash

# Setup powerline
yay -S --needed --noconfirm go
# get powerline from github and install in "GOPATH" it using go
go install github.com/justjanne/powerline-go@latest

