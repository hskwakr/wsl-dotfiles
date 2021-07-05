#!/bin/sh
# Remove make

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "make"; then
  echo "Remove make ..."

  sudo apt update
  sudo apt -y remove make
else
  echo "make does not exist"
fi
