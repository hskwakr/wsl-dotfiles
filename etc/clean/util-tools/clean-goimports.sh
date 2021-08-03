#!/bin/sh
# Remove goimports

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "goimports"; then
  echo "Remove goimports ..."
  rm -rf "${GOPATH}"/bin/goimports
else
  echo "goimports is already removed"
fi
