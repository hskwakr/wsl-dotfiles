#!/bin/sh
# Remove xdg-utils

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "xdg-open"; then
  echo "Remove xdg-utils ..."

  sudo apt update
  sudo apt -y remove xdg-utils
else
  echo "xdg-utils does not exist"
fi
