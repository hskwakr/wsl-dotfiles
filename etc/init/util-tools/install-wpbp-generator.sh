#!/bin/sh
# Install wpbp-generator with a way following below site.
# https://github.com/WPBP/generator

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "wpbp-generator"; then
  if ! has "composer"; then
    echo "composer required"
    exit 1
  fi

  printf "\n\n"
  echo "Start installing wpbp-generator ..."

  composer global require wpbp/generator:dev-master
else
  echo "wpbp-generator is already installed"
fi
