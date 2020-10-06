#!/usr/bin/env bash

BASEDIR="$(cd .. && pwd)"

dotarray=(
    .config .i3 .profile .bash_aliases .bash_profile .dmenurc .bashrc
    .gitconfig .vimrc .inputrc .Xresources .gtkrc-2.0.mine
)


# modified from: https://github.com/tomnomnom/dotfiles/blob/master/setup.sh
function create_symlink
{
    src="${BASEDIR}/${1}"
    dest="${HOME}/${1}"

    # test existence of symblink
    if [ -h "${dest}" ]; then
        rm ${dest}
    # test existence of same-name file/directory
    elif [ -f "${dest}" ] || [ -d "${dest}" ]; then
        mv ${dest} ${dest}.bak
    else
        mkdir -p $(dirname $dest)
    fi

    # create symblic link
    ln -sv ${src} ${dest}
}

echo "Creating symbolic links for dotfiles..."

for i in "${dotarray[@]}"; do
    if [ -d  "$BASEDIR/$i" ]; then
        for j in $(find $BASEDIR/$i -follow -type f); do
            # only pass the part of $j string after BASEDIR
            create_symlink ${j##*$BASEDIR/}
        done
    else
        create_symlink $i
    fi
done

echo "Symbolic links successfully created!"

