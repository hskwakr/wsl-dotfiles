#!/bin/sh

DOT_DIR="$HOME/wsl-dotfiles"
SCRIPTS_DIR="${DOT_DIR}/etc/init"
BUILD_TOOL_DIR="${SCRIPTS_DIR}/build-tools"

. "${DOT_DIR}/etc/lib/sh/run_current_dir_scripts.sh"

if [ -d "${BUILD_TOOL_DIR}" ]; then
  printf "\n\n"
  echo "Start runing init scripts in build-tools..."
  cd "${BUILD_TOOL_DIR}" || exit 1
  run_current_dir_scripts
else
  echo "${BUILD_TOOL_DIR} does not exist"
  exit 1
fi
