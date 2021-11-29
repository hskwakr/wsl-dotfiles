#!/bin/sh
# Remove delta

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "delta"; then
  echo "Remove delta ..."

  sudo dpkg -r git-delta
else
  echo "delta is already removed"
fi
