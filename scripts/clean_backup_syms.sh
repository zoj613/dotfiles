#!/usr/bin/env bash

# script deletes backups of symbolic linked dotfiles in the home directory
cd $HOME
for i in $(find -path "*.bak"); do
    if [[ -L "${i%%.bak}" ]]; then
        echo "Deleting $i ..."
        rm $i
    fi
done

