#!/bin/sh
# Install rustup with a way following below site.
# https://www.rust-lang.org/ja/tools/install

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if has "rustup"; then
  echo "rustup is already installed"
  exit 0
fi

printf "\n\n"
echo "Start installing rustup ..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path
