#!/bin/sh
# Install node with nvm.
# https://github.com/nvm-sh/nvm#long-term-support

DOT_DIR="$HOME/wsl-dotfiles"

. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "node"; then
  if ! has "nvm"; then
    sh "${DOT_DIR}/etc/init/install-nvm.sh"
  fi

  printf "\n\nStart installing node ..."
  # shellcheck disable=SC1091
  . "${NVM_DIR}/nvm.sh"
  nvm install "lts/*" --reinstall-packages-from=current
else
  echo "... node is already installed"
  exit 1
fi
