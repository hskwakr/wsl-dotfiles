#!/bin/sh
# Install bat with a way following below site.
# https://github.com/sharkdp/bat#on-ubuntu-using-most-recent-deb-packages

DOT_DIR="$HOME/wsl-dotfiles"
INSTALL_DIR="${DOT_DIR}/.cache"
INSTALL_ITEM="${INSTALL_DIR}/bat.deb"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "bat"; then
  if [ ! -d "${INSTALL_DIR}" ]; then
    mkdir -p "${INSTALL_DIR}"
  fi

  if ! has "wget"; then
    echo "wget required"
    exit 1
  fi

  printf "\n\n"
  echo "Start installing bat ..."

  wget -O "${INSTALL_ITEM}" "https://github.com/sharkdp/bat/releases/download/v0.18.1/bat_0.18.1_amd64.deb"
  # adapt version number and architecture
  sudo dpkg -i "${INSTALL_ITEM}"

  rm -rf "${INSTALL_ITEM}"
else
  echo "bat is already installed"
fi
