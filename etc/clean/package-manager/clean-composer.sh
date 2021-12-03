#!/bin/sh
# Remove composer
# https://stackoverflow.com/questions/30396451/remove-composer

DOT_DIR="${HOME}/wsl-dotfiles"
BIN_DIR="${HOME}/.cache/mybuild/bin"
INSTALLED_DIR="${HOME}/.cache/mybuild/.composer"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "composer"; then
  if [ -d "${INSTALLED_DIR}" ]; then
    echo "Remove composer ..."
    unlink "${BIN_DIR}/composer"
    rm -rf "${INSTALLED_DIR}"

    # Remove generated files by installation
    rm -rf "${HOME}/.cache/composer"
    rm -rf "${HOME}/.config/composer"
    rm -rf "${HOME}/.local/share/composer"

    echo "... done"
  else
    echo "Could not remove composer"
    exit 0
  fi
else
  echo "composer is already removed"
fi
