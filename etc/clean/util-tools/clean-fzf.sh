#!/bin/sh
# Remove fzf
# https://github.com/junegunn/fzf#using-linux-package-managers

DOT_DIR="$HOME/wsl-dotfiles"
INSTALLED_DIR="${DOT_DIR}/.cache/.fzf"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "fzf"; then
  if [ -d "${INSTALLED_DIR}" ]; then
    echo "Remove fzf ..."
    rm -rf "${INSTALLED_DIR}"
    echo "... done"
  else
    echo "Could not remove fzf"
    exit 0
  fi
else
  echo "fzf is already removed"
fi
