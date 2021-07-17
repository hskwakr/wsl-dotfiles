#!/bin/sh
# Install python3-pip

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "pip"; then
  printf "\n\n"
  echo "Start installing python3-pip ..."

  sudo apt update
  sudo apt -y install python3-pip
else
  echo "pip is already installed"
fi
