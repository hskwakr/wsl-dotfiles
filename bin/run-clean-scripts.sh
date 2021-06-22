#!/bin/sh

SCRIPTS_DIR="$HOME/wsl-dotfiles/etc/clean"

if [ -d "${SCRIPTS_DIR}" ]; then
  echo "Start runing clean scripts..."
  cd "${SCRIPTS_DIR}" || exit 1
  for f in *.sh; do
    echo "Run ${f}..."
    sh "${f}"
  done
else
  echo "${SCRIPTS_DIR} does not exist"
  exit 1
fi
