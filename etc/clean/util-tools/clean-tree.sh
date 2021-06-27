#!/bin/sh
# Remove tree

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "tree"; then
  echo "Remove tree ..."

  sudo apt update
  sudo apt -y remove tree
else
  echo "tree is already removed"
fi
