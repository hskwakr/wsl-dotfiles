#!/bin/sh
# Remove goreleaser

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "goreleaser"; then
  echo "Remove goreleaser ..."
  rm -rf "${GOPATH}"/bin/goreleaser
else
  echo "goreleaser is already removed"
fi
