#!/bin/sh
# Install fontconfig

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "fc-cache"; then
  printf "\n\n"
  echo "Start installing fontconfig ..."

  sudo apt update
  sudo apt -y install fontconfig
else
  echo "fontconfig is already installed"
  exit 1
fi
