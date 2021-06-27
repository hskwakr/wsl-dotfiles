#!/bin/sh
# Remove unzip

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "unzip"; then
  echo "Remove unzip ..."

  sudo apt update
  sudo apt -y remove unzip
else
  echo "unzip does not exist"
fi
