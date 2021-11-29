#!/bin/sh
# Install delta with a way following below site.
# https://github.com/dandavison/delta#installation

DOT_DIR="$HOME/wsl-dotfiles"
INSTALL_DIR="${HOME}/.cache/mybuild"
INSTALL_ITEM="${INSTALL_DIR}/delta.deb"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "delta"; then
  if [ ! -d "${INSTALL_DIR}" ]; then
    mkdir -p "${INSTALL_DIR}"
  fi

  if ! has "wget"; then
    echo "wget required"
    exit 1
  fi

  printf "\n\n"
  echo "Start installing fd ..."

  wget -O "${INSTALL_ITEM}" "https://github.com/dandavison/delta/releases/download/0.10.2/git-delta_0.10.2_amd64.deb"
  # adapt version number and architecture
  sudo dpkg -i "${INSTALL_ITEM}"

  rm -rf "${INSTALL_ITEM}"
else
  echo "delta is already installed"
fi
