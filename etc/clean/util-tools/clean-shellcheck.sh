#!/bin/sh
# Remove shellcheck

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "shellcheck"; then
  echo "Remove shellcheck ..."

  sudo apt update
  sudo apt -y remove shellcheck
else
  echo "shellcheck is already removed"
fi
