#!/usr/bin/env bash

PYENV_HOST="https://github.com/pyenv"
PYENV_HOME="${HOME}/.pyenv"


git clone ${PYENV_HOST}/pyenv.git PYENV_HOME

# install pyenv-virtualenv plugin to manage environments
git clone ${PYENV_HOST}/pyenv-virtualenv.git PYENV_HOME/plugins/pyenv-virtualenv

# yi all python build system dependencies
yay -S --needed --noconfirm base-devel openssl zlib xz bzip2 readline sqlite \
    curl llvm ncurses xz tk libffi python-pyopenssl ncurses5-compat-libs

