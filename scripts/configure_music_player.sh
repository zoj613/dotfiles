#!/usr/bin/env bash

# create necessary directories to setup mpd
CONFIGDIR=$HOME/.config/mpd
mkdir -p $CONFIGDIR/playlists
touch $CONFIGDIR/database $CONFIGDIR/pid $CONFIGDIR/state $CONFIGDIR/sticker.sql

# start the mpd service as a user
systemctl --user enable --now mpd.service
