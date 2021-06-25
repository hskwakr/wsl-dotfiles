#!/bin/sh
# Remove vivid

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "vivid"; then
  echo "Remove vivid ..."

  sudo dpkg -r vivid
else
  echo "vivid is already removed"
  exit 1
fi
