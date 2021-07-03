#!/bin/sh
# Install xdg-utils

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "xdg-open"; then
  printf "\n\n"
  echo "Start installing xdg-utils ..."
  sudo apt update
  sudo apt -y install xdg-utils
else
  echo "xdg-utils is already installed"
fi
