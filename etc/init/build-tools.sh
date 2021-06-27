#!/bin/sh

DOT_DIR="$HOME/wsl-dotfiles"
INIT_DIR="${DOT_DIR}/etc/init"
SCRIPTS_DIR="${INIT_DIR}/build-tools"

. "${DOT_DIR}/etc/lib/sh/run_current_dir_scripts.sh"

if [ -d "${SCRIPTS_DIR}" ]; then
  printf "\n\n"
  echo "Start runing init scripts in build-tools..."
  cd "${SCRIPTS_DIR}" || exit 1
  run_current_dir_scripts
else
  echo "${SCRIPTS_DIR} does not exist"
  exit 1
fi
