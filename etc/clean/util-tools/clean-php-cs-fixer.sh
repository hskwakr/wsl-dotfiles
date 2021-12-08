#!/bin/sh
# Remove php-cs-fixer

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "php-cs-fixer"; then
  echo "Remove php-cs-fixer ..."

  composer global remove friendsofphp/php-cs-fixer
else
  echo "php-cs-fixer is already removed"
fi
