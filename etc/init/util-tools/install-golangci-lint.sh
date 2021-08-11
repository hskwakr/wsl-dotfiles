#!/bin/sh
# Install golangci-lint
# https://golangci-lint.run/usage/install/#linux-and-windows

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "golangci-lint"; then
  printf "\n\n"
  echo "Start installing golangci-lint ..."

  curl -sSfL "https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh" | sh -s -- -b "$(go env GOPATH)"/bin v1.41.1
else
  echo "golangci-lint is already installed"
fi
