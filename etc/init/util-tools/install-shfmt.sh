#!/bin/sh
# Install shfmt with a way following below site.
# https://github.com/mvdan/sh

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "shfmt"; then
  if has "go"; then
    printf "\n\n"
    echo "Start installing shfmt ..."
    GO111MODULE=on go get mvdan.cc/sh/v3/cmd/shfmt
  else
    echo "go required"
  fi
else
  echo "shfmt is already installed"
fi
