#!/bin/sh
# Install git with a way following below site.
# https://git-scm.com/download/linux

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

printf "\n\nStart installing git ..."
if ! has "git"; then
  sudo apt update
  sudo apt install git
fi
