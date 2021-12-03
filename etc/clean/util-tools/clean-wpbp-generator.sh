#!/bin/sh
# Remove wpbp-generator

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "wpbp-generator"; then
  echo "Remove wpbp-generator ..."

  composer global remove wpbp/generator
else
  echo "wpbp-generator is already removed"
fi
