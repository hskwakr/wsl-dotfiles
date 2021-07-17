#!/bin/sh
# Remove python3-pip

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "pip"; then
  echo "Remove python3-pip ..."

  sudo apt update
  sudo apt -y remove python3-pip
else
  echo "pip is already removed"
fi
