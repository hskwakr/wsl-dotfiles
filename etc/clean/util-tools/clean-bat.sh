#!/bin/sh
# Remove bat

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "bat"; then
  echo "Remove bat ..."

  sudo dpkg -r bat
else
  echo "bat is already removed"
fi
