#!/bin/sh
# Remove starship with a way following below site.
# https://starship.rs/faq/#how-do-i-uninstall-starship

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "starship"; then
  printf "\n\n"
  echo "Remove starship ..."
  # Locate and delete the starship binary
  sudo rm -fv "$(which starship)"
else
  echo "starship does not exist"
  exit 1
fi
