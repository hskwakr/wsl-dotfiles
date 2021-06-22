#!/bin/sh

SCRIPTS_DIR="$HOME/wsl-dotfiles/etc/init"
BUILD_TOOL_DIR="${SCRIPTS_DIR}/build-tools"
RUNTIME_DIR="${SCRIPTS_DIR}/programming-runtime"
UTIL_TOOL_DIR="${SCRIPTS_DIR}/util-tools"

run_scripts() {
	for f in *.sh; do
		echo "Run ${f}..."
		sh "${f}"
	done
}

if [ -d "${BUILD_TOOL_DIR}" ]; then
	print "\n\nStart runing init scripts in build-tools..."
	cd "${BUILD_TOOL_DIR}" || exit 1
	run_scripts
else
	echo "${BUILD_TOOL_DIR} does not exist"
	exit 1
fi

if [ -d "${RUNTIME_DIR}" ]; then
	print "\n\nStart runing init scripts in programming-runtime..."
	cd "${RUNTIME_DIR}" || exit 1
	run_scripts
else
	echo "${RUNTIME_DIR} does not exist"
	exit 1
fi

if [ -d "${UTIL_TOOL_DIR}" ]; then
	print "\n\nStart runing init scripts in util-tools..."
	cd "${UTIL_TOOL_DIR}" || exit 1
	run_scripts
else
	echo "${UTIL_TOOL_DIR} does not exist"
	exit 1
fi
