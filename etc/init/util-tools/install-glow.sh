#!/bin/sh
# Install glow with a way following below site.
# https://github.com/charmbracelet/glow#installation

DOT_DIR="$HOME/wsl-dotfiles"
BIN_DIR="${DOT_DIR}/.cache/bin"
DOWNLOAD_DIR="${DOT_DIR}/.cache/.glow"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "glow"; then
  printf "\n\n"
  echo "Start installing glow ..."

  git clone --depth 1 https://github.com/charmbracelet/glow.git "${DOWNLOAD_DIR}"
  cd "${DOWNLOAD_DIR}" || exit 0
  go build

  if [ ! -d "${BIN_DIR}" ]; then
    mkdir -p "${BIN_DIR}"
  fi
  ln -snf "${DOWNLOAD_DIR}/glow" "${BIN_DIR}/glow"
else
  echo "glow is already installed"
fi
