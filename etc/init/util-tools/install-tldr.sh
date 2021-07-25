#!/bin/sh
# Install tldr

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "tldr"; then
  printf "\n\n"
  echo "Start installing tldr ..."

  pip install --user tldr
else
  echo "tldr is already installed"
fi
