#!/bin/sh
# Remove tldr

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "tldr"; then
  echo "Remove tldr ..."

  pip uninstall -y tldr
else
  echo "tldr is already removed"
fi
