#!/bin/sh
# Install node with nvm.
# https://github.com/nvm-sh/nvm#long-term-support

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "node"; then
  if ! has "nvm"; then
    sh "${DOT_DIR}/etc/init/build-tools/install-nvm.sh"
  fi

  printf "\n\n"
  echo "Start installing node ..."
  # shellcheck disable=SC1091
  . "${NVM_DIR}/nvm.sh"
  nvm install --lts
  npm install -g npm@latest
else
  echo "... node is already installed"
fi
