#!/bin/sh
# Install unzip

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "unzip"; then
  printf "\n\n"
  echo "Start installing unzip ..."

  sudo apt update
  sudo apt -y install unzip
else
  echo "unzip is already installed"
fi
