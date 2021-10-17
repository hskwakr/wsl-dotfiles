#!/bin/sh
# Install goreleaser
# https://goreleaser.com/install/#go-install

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "goreleaser"; then
  printf "\n\n"
  echo "Start installing goreleaser ..."

  go install github.com/goreleaser/goreleaser@latest
else
  echo "goreleaser is already installed"
fi
