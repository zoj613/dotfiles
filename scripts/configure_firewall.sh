#!/usr/bin/env bash

sudo ufw enable
sudo systemctl enable --now ufw.service
