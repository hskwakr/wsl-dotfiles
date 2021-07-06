#!/bin/sh
# Remove rustup

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "rustup"; then
  echo "rustup does not exist"
  exit 0
fi

echo "Remove rustup ..."
rustup self uninstall -y
