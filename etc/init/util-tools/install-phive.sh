#!/bin/sh
# Install phive with a way following below site.
# https://phar.io/

DOT_DIR="$HOME/wsl-dotfiles"
INSTALL_DIR="${HOME}/.cache/mybuild/bin"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "phive"; then
  if [ ! -d "${INSTALL_DIR}" ]; then
    mkdir -p "${INSTALL_DIR}"
  fi

  if ! has "wget"; then
    echo "wget required"
    exit 1
  fi
  if ! has "gpg"; then
    echo "gpg required"
    exit 1
  fi

  printf "\n\n"
  echo "Start installing phive ..."

  wget -O phive.phar https://phar.io/releases/phive.phar
  wget -O phive.phar.asc https://phar.io/releases/phive.phar.asc
  gpg --keyserver hkps://keys.openpgp.org --recv-keys 0x9D8A98B29B2D5D79
  gpg --verify phive.phar.asc phive.phar
  chmod +x phive.phar
  sudo mv phive.phar "${INSTALL_DIR}/phive"

  rm phive.phar.asc 
else
  echo "phive is already installed"
fi
