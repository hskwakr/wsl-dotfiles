#!/bin/sh
# Remove node with nvm

DOT_DIR="$HOME/wsl-dotfiles"
. "${DOT_DIR}/etc/lib/sh/has.sh"


if has "node"; then
  if ! has "nvm"; then
    sh "${DOT_DIR}/etc/init/build-tools/install-nvm.sh"
  fi

  echo "Remove node ..."
  nvm deactivate
  nvm uninstall --lts
else
  echo "node does not exist"
  exit 1
fi
