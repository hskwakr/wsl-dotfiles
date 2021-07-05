#!/bin/sh
# Install make

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "make"; then
  printf "\n\n"
  echo "Start installing make ..."
  sudo apt update
  sudo apt -y install make
else
  echo "make is already installed"
fi
