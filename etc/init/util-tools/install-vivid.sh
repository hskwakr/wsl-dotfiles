#!/bin/sh
# Install vivid with a way following below site.
# https://github.com/sharkdp/vivid#on-debian-based-systems

DOT_DIR="$HOME/wsl-dotfiles"
INSTALL_DIR="${DOT_DIR}/.cache"
INSTALL_ITEM="${INSTALL_DIR}/vivid.deb"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "vivid"; then
  if [ ! -d "${INSTALL_DIR}" ]; then
    mkdir -p "${INSTALL_DIR}"
  fi

  if ! has "wget"; then
    echo "wget required"
    exit 1
  fi

  printf "\n\n"
  echo "Start installing vivid ..."

  wget -O "${INSTALL_ITEM}" "https://github.com/sharkdp/vivid/releases/download/v0.7.0/vivid_0.7.0_amd64.deb"
  # adapt version number and architecture
  sudo dpkg -i "${INSTALL_ITEM}"

  rm -rf "${INSTALL_ITEM}"
else
  echo "vivid is already installed"
fi
