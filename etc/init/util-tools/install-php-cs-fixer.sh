#!/bin/sh
# Install php-cs-fixer with a way following below site.
# https://github.com/FriendsOfPHP/PHP-CS-Fixer/blob/master/doc/installation.rst#globally-composer

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "php-cs-fixer"; then
  if ! has "composer"; then
    echo "composer required"
    exit 1
  fi

  printf "\n\n"
  echo "Start installing php-cs-fixer ..."

  composer global require friendsofphp/php-cs-fixer
else
  echo "php-cs-fixer is already installed"
fi
