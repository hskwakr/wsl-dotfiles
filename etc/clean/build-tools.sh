#!/bin/sh

DOT_DIR="$HOME/wsl-dotfiles"
SCRIPTS_DIR="${DOT_DIR}/etc/clean"
BUILD_TOOL_DIR="${SCRIPTS_DIR}/build-tools"

. "${DOT_DIR}/etc/lib/sh/run_current_dir_scripts.sh"

if [ -d "${BUILD_TOOL_DIR}" ]; then
  print "\n\n"
  echo "Start runing clean scripts in build-tools..."
  cd "${BUILD_TOOL_DIR}" || exit 1
  run_current_dir_scripts
else
  echo "${BUILD_TOOL_DIR} does not exist"
fi
