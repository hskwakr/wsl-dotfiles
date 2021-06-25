#!/bin/sh
# Run all scripts in current dir.

run_current_dir_scripts() {
  for f in *.sh; do
    echo "Run ${f}..."
    sh "${f}"
  done
}
