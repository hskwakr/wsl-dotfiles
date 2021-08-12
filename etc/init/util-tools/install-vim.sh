#!/bin/sh
# Install vim with a way following below site.
# https://vim-jp.org/docs/build_linux.html

BIN_DIR="${HOME}/.cache/mybuild/bin"
DOWNLOAD_DIR="${HOME}/.cache/mybuild/.vim"

if [ -d "${DOWNLOAD_DIR}" ]; then
  sudo rm -rf "${DOWNLOAD_DIR}"
fi

printf "\n\n"
echo "Start installing vim ..."

git clone --depth 1 https://github.com/vim/vim.git "${DOWNLOAD_DIR}"
cd "${DOWNLOAD_DIR}" || exit 0

./configure \
  --with-features=huge --enable-gui=gtk2 \
  --enable-perlinterp --enable-pythoninterp \
  --enable-python3interp --enable-rubyinterp \
  --enable-luainterp --with-luajit \
  --enable-fail-if-missing \
  --prefix="${DOWNLOAD_DIR}"

make
sudo make install

ln -snf "${DOWNLOAD_DIR}"/bin/* "${BIN_DIR}"
