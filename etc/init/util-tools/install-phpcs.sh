#!/bin/sh
# Install phpcs with a way following below site.
# https://github.com/squizlabs/PHP_CodeSniffer#composer

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "phpcs"; then
  if ! has "composer"; then
    echo "composer required"
    exit 1
  fi

  printf "\n\n"
  echo "Start installing phpcs ..."

  composer global require "squizlabs/php_codesniffer=*"
else
  echo "phpcs is already installed"
fi
