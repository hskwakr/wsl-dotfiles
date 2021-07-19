#!/bin/sh
# Remove glow

DOT_DIR="${HOME}/wsl-dotfiles"
INSTALLED_DIR="${HOME}/.cache/mybuild/.glow"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "glow"; then
  if [ -d "${INSTALLED_DIR}" ]; then
    echo "Remove glow ..."
    rm -rf "${INSTALLED_DIR}"
    echo "... done"
  else
    echo "Could not remove glow"
    exit 0
  fi
else
  echo "glow is already removed"
fi
