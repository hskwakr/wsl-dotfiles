#!/bin/sh

SCRIPTS_DIR="$HOME/wsl-dotfiles/etc/clean"

if [ -d "${SCRIPTS_DIR}" ]; then
  echo "Start runing clean scripts..."

  sh "${SCRIPTS_DIR}/util-tools.sh"
  sh "${SCRIPTS_DIR}/package-manager.sh"
  sh "${SCRIPTS_DIR}/programming-runtime.sh"
  sh "${SCRIPTS_DIR}/build-tools.sh"

  echo "Clean apt dependencies..."
  sudo apt --purge autoremove
else
  echo "${SCRIPTS_DIR} does not exist"
  exit 1
fi
