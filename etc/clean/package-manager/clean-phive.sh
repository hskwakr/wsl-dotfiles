#!/bin/sh
# Remove phive

DOT_DIR="$HOME/wsl-dotfiles"
INSTALL_DIR="${HOME}/.cache/mybuild/bin"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "phive"; then
  echo "Remove phive ..."
  sudo rm "${INSTALL_DIR}/phive"
else
  echo "phive is already removed"
fi
