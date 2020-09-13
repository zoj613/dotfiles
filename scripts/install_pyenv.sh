#!/usr/bin/env bash

PYENV_HOST="https://github.com/pyenv"

git clone ${PYENV_HOST}/pyenv.git ${HOME}/.pyenv

# install pyenv-virtualenv plugin to manage environments
git clone ${PYENV_HOST}/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv

# restart shell
exec "$SHELL"

# yi all python build system dependencies
yi base-devel openssl zlib xz bzip2 readline sqlite curl llvm ncurses xz tk \
    libffi python-pyopenssl ncurses5-compat-libs

# install default python version 3.6.10
pyenv install 3.6.10

