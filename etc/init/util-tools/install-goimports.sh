#!/bin/sh
# Install goimports
# https://pkg.go.dev/golang.org/x/tools/cmd/goimports

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "goimports"; then
  printf "\n\n"
  echo "Start installing goimports ..."

  go get golang.org/x/tools/cmd/goimports
else
  echo "goimports is already installed"
fi
