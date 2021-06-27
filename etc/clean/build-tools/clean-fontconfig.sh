#!/bin/sh
# Remove fontconfig

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "fc-cache"; then
  echo "Remove fontconfig ..."

  sudo apt update
  sudo apt -y remove fontconfig
else
  echo "fontconfig is already removed"
fi
