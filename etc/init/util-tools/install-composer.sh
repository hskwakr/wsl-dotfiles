#!/bin/sh
# Install composer with a way following below site.
# https://getcomposer.org/doc/faqs/how-to-install-composer-programmatically.md
# https://getcomposer.org/download/

DOT_DIR="$HOME/wsl-dotfiles"
BIN_DIR="${HOME}/.cache/mybuild/bin"
INSTALL_DIR="${HOME}/.cache/mybuild/.composer"
SETUP="${INSTALL_DIR}/composer-setup.php"
. "${DOT_DIR}/etc/lib/sh/has.sh"

if ! has "composer"; then
  if [ ! -d "${INSTALL_DIR}" ]; then
    mkdir -p "${INSTALL_DIR}"
  fi

  if ! has "php"; then
    echo "php required"
    exit 1
  fi

  printf "\n\n"
  echo "Start installing composer ..."

  EXPECTED_CHECKSUM="$(php -r 'copy("https://composer.github.io/installer.sig", "php://stdout");')"
  php -r "copy('https://getcomposer.org/installer', '${SETUP}');"
  ACTUAL_CHECKSUM="$(php -r "echo hash_file('sha384', '${SETUP}');")"

  if [ "$EXPECTED_CHECKSUM" != "$ACTUAL_CHECKSUM" ]
  then
    >&2 echo 'ERROR: Invalid installer checksum'
    rm -rf "${SETUP}"
    exit 1
  fi

  php "${SETUP}" --install-dir="${INSTALL_DIR}" --filename=composer

  # Simlink
  if [ ! -d "${BIN_DIR}" ]; then
    mkdir -p "${BIN_DIR}"
  fi
  ln -snf "${INSTALL_DIR}/composer" "${BIN_DIR}/composer"
else
  echo "composer is already installed"
fi
