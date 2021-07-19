#!/bin/sh
# Install nvm with a way following below site.
# https://github.com/nvm-sh/nvm#git-install

DOT_DIR="${HOME}/wsl-dotfiles"
INSTALL_DIR="${HOME}/.cache/mybuild/.nvm"

. "${DOT_DIR}/etc/lib/sh/has.sh"

if [ ! -d "${INSTALL_DIR}" ]; then
  mkdir -p "${INSTALL_DIR}"

  if has "git"; then
    printf "\n\n"
    echo "Start installing nvm ..."

    git clone https://github.com/nvm-sh/nvm.git "${INSTALL_DIR}"
    cd "${INSTALL_DIR}" || exit 1
    git checkout v0.38.0
  else
    echo "git required"
    exit 1
  fi
else
  echo "${INSTALL_DIR} is already exists"
fi
