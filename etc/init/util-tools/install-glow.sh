#!/bin/sh
# Install glow with a way following below site.
# https://github.com/charmbracelet/glow#installation

DOT_DIR="$HOME/wsl-dotfiles"
INSTALL_DIR="${DOT_DIR}/.cache/.glow"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "glow"; then
  printf "\n\n"
  echo "Start installing glow ..."

  git clone --depth 1 https://github.com/charmbracelet/glow.git "${INSTALL_DIR}"
  cd "${INSTALL_DIR}" || exit 0
  go build
else
  echo "glow is already installed"
fi
