#!/bin/sh
# Install build-essential
# https://packages.ubuntu.com/impish/build-essential

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "gcc"; then
  printf "\n\n"
  echo "Start installing build-essential ..."
  sudo apt update
  sudo apt -y install build-essential
else
  echo "gcc is already installed"
fi
