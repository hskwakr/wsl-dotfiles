#!/bin/sh
# Remove ripgrep
# https://github.com/BurntSushi/ripgrep

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "rg"; then
  echo "Remove ripgrep ..."

  sudo apt update
  sudo apt -y remove ripgrep
else
  echo "rg is already removed"
fi
