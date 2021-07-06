#!/bin/sh
# Install fzf with a way following below site.
# https://github.com/junegunn/fzf#using-git

DOT_DIR="$HOME/wsl-dotfiles"
INSTALL_DIR="${DOT_DIR}/.cache/.fzf"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "fzf"; then
  printf "\n\n"
  echo "Start installing fzf ..."

  git clone --depth 1 https://github.com/junegunn/fzf.git "${INSTALL_DIR}"
  bash -c "${INSTALL_DIR}/install --bin --no-bash"
else
  echo "fzf is already installed"
fi
