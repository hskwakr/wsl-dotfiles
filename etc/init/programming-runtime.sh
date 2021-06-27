#!/bin/sh

DOT_DIR="$HOME/wsl-dotfiles"
SCRIPTS_DIR="${DOT_DIR}/etc/init"
RUNTIME_DIR="${SCRIPTS_DIR}/programming-runtime"

. "${DOT_DIR}/etc/lib/sh/run_current_dir_scripts.sh"

if [ -d "${RUNTIME_DIR}" ]; then
  printf "\n\n"
  echo "Start runing init scripts in programming-runtime..."
  cd "${RUNTIME_DIR}" || exit 1
  run_current_dir_scripts
else
  echo "${RUNTIME_DIR} does not exist"
  exit 1
fi
