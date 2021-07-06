#!/bin/sh
# Install navi with a way following below site.
# https://github.com/denisidoro/navi/blob/master/docs/installation.md

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "navi"; then
  if ! has "cargo"; then
    echo "cargo required"
    exit 1
  fi

  printf "\n\n"
  echo "Start installing navi ..."

  cargo install navi
else
  echo "navi is already installed"
fi
