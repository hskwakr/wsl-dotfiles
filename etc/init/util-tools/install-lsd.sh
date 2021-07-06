#!/bin/sh
# Install lsd with a way following below site.
# https://github.com/Peltoche/lsd#installation

DOT_DIR="$HOME/wsl-dotfiles"
INSTALL_DIR="${DOT_DIR}/.cache"
INSTALL_ITEM="${INSTALL_DIR}/lsd.deb"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "lsd"; then
  if [ ! -d "${INSTALL_DIR}" ]; then
    mkdir -p "${INSTALL_DIR}"
  fi

  if ! has "wget"; then
    echo "wget required"
    exit 1
  fi

  printf "\n\n"
  echo "Start installing lsd ..."

  wget -O "${INSTALL_ITEM}" "https://github.com/Peltoche/lsd/releases/download/0.20.1/lsd_0.20.1_amd64.deb"
  # adapt version number and architecture
  sudo dpkg -i "${INSTALL_ITEM}"

  rm -rf "${INSTALL_ITEM}"
else
  echo "lsd is already installed"
fi
