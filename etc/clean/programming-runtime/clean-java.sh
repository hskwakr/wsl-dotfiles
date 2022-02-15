#!/bin/sh
# Remove java

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "java"; then
  echo "Remove java ..."

  sudo apt update
  sudo apt -y remove default-jre
else
  echo "java is already removed"
fi
