#!/bin/sh
# Install ripgrep with a way following below site.
# https://github.com/BurntSushi/ripgrep

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "rg"; then
  printf "\n\n"
  echo "Start installing ripgrep ..."

  sudo apt update
  sudo apt -y install ripgrep
else
  echo "rg is already installed"
fi
