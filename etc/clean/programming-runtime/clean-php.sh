#!/bin/sh
# Remove php

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "php"; then
  echo "Remove php ..."

  sudo apt update
  sudo apt -y remove php
else
  echo "php is already removed"
fi
