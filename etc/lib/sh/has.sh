#!/bin/sh
# Check a given value is an available or not
# For more details:
#   help type

has() {
  type "$1" >/dev/null 2>&1
}
