#!/bin/sh
# Install shellcheck

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "shellcheck"; then
  printf "\n\n"
  echo "Start installing shellcheck ..."

  sudo apt update
  sudo apt -y install shellcheck
else
  echo "shellcheck is already installed"
fi
