#!/bin/sh
# Remove phpcs

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "phpcs"; then
  echo "Remove phpcs ..."

  composer global remove squizlabs/php_codesniffer
else
  echo "phpcs is already removed"
fi
