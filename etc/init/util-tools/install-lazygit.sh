#!/bin/sh
# Install lazygit with a way following below site.
# https://github.com/jesseduffield/lazygit#go

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "lazygit"; then
  if has "go"; then
    printf "\n\n"
    echo "Start installing lazygit ..."
    go get github.com/jesseduffield/lazygit
  else
    echo "go required"
  fi
else
  echo "lazygit is already installed"
fi
