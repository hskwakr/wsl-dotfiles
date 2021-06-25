#!/bin/sh
# Install starship with a way following below site.
# https://starship.rs/guide/#%F0%9F%9A%80-installation

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "curl"; then
  echo "curl required"
  exit 1
fi

if fc-list | grep 'Fira' >/dev/null; then
  sh "${DOT_DIR}/etc/init/util-tools/install-nerd-fonts.sh"
fi

printf "\n\n"
echo "Start installing starship ..."
sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- --force
