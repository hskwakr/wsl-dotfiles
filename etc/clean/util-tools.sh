#!/bin/sh

DOT_DIR="$HOME/wsl-dotfiles"
SCRIPTS_DIR="${DOT_DIR}/etc/clean"
UTIL_TOOL_DIR="${SCRIPTS_DIR}/util-tools"

. "${DOT_DIR}/etc/lib/sh/run_current_dir_scripts.sh"

if [ -d "${UTIL_TOOL_DIR}" ]; then
  print "\n\n"
  echo "Start runing clean scripts in util-tools..."
  cd "${UTIL_TOOL_DIR}" || exit 1
  run_current_dir_scripts
else
  echo "${UTIL_TOOL_DIR} does not exist"
fi
