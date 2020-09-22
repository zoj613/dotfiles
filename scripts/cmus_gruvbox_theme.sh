#!/usr/bin/env bash

CMUS_DIR=${HOME}/.config/cmus
mkdir -p ${CMUS_DIR}
curl -#o ${CMUS_DIR}/gruvbox-dark.theme https://raw.githubusercontent.com/egel/cmus-gruvbox/master/gruvbox-dark.theme

