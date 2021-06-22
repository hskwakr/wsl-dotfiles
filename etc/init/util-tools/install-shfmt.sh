#!/bin/sh
# Install shfmt with a way following below site.
# https://github.com/mvdan/sh

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "go"; then
  printf "\n\nStart installing go ..."
  GO111MODULE=on go get mvdan.cc/sh/v3/cmd/shfmt
else
  echo "go required"
  exit 1
fi
