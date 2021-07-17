#!/bin/sh
# Remove vint

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "vint"; then
  echo "Remove vint ..."

  pip uninstall -y vim-vint
else
  echo "vint is already removed"
fi
