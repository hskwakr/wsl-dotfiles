# wsl-dotfiles
[![CI](https://github.com/hskwakr/wsl-dotfiles/actions/workflows/main.yml/badge.svg)](https://github.com/hskwakr/wsl-dotfiles/actions/workflows/main.yml)

It is for Ubuntu 20.04.2 LTS on WSL.

### Install
```sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/hskwakr/wsl-dotfiles/main/bin/install.sh)"
```

### Init
```sh
cd ~ && ./wsl-dotfiles/bin/init.sh && . .bashrc
```

### Uninstall
```sh
cd ~ && ./wsl-dotfiles/bin/clean.sh
```

### How to deal with Git line ending issues between Windows and WSL.
I decide not to touch files on Windows from WSL and vice versa. 
