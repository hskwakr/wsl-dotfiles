#!/bin/sh
# Install php

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "php"; then
  printf "\n\n"
  echo "Start installing php ..."

  sudo apt update
  sudo apt -y install php
else
  echo "php is already installed"
fi
