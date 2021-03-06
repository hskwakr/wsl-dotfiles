#!/bin/sh
# Install tree

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "tree"; then
  printf "\n\n"
  echo "Start installing tree ..."

  sudo apt update
  sudo apt -y install tree
else
  echo "tree is already installed"
fi
