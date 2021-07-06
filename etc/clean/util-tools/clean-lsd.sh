#!/bin/sh
# Remove lsd

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "lsd"; then
  echo "Remove lsd ..."

  sudo dpkg -r lsd
else
  echo "lsd is already removed"
fi
