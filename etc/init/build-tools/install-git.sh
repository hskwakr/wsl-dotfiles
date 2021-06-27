#!/bin/sh
# Install git with a way following below site.
# https://git-scm.com/download/linux

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "git"; then
  printf "\n\n"
  echo "Start installing git ..."
  sudo apt update
  sudo apt -y install git
else
  echo "git is already installed"
fi
