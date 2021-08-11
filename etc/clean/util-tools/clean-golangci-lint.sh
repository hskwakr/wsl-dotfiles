#!/bin/sh
# Remove golangci-lint

DOT_DIR="${HOME}/wsl-dotfiles"
CACHE_DIR="${HOME}/.cache"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "golangci-lint"; then
  echo "Remove golangci-lint ..."

  rm -f "${CACHE_DIR}/mygo/bin/golangci-lint"
else
  echo "golangci-lint is already removed"
fi
