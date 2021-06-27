#!/bin/sh
# Run all scripts in current dir.

run_current_dir_scripts() {
  for f in *.sh; do
    if [ -f ${f} ]; then
      echo "Run ${f}..."
      sh "${f}"
    fi
  done
}
