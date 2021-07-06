#!/bin/sh
# Remove navi

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "navi"; then
  if ! has "cargo"; then
    echo "cargo required"
    exit 1
  fi

  printf "\n\n"
  echo "Remove navi ..."

  cargo uninstall navi
else
  echo "navi does not exist"
fi
