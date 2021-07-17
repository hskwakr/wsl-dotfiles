#!/bin/sh
# Install vint

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "vint"; then
  printf "\n\n"
  echo "Start installing vint ..."

  pip install --user vim-vint
else
  echo "vint is already installed"
fi
