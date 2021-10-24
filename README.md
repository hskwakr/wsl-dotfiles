# wsl-dotfiles
[![CI](https://github.com/hskwakr/wsl-dotfiles/actions/workflows/main.yml/badge.svg)](https://github.com/hskwakr/wsl-dotfiles/actions/workflows/main.yml)

Configurations and tool installation scripts for Ubuntu 20.04 LTS on WSL2.

# Usage
I recommend testing with playgrounds before using this repository.  
[Ubuntu 20.04 Playground | Katacoda](https://www.katacoda.com/courses/ubuntu/playground2004 "Ubuntu 20.04 Playground | Katacoda")

### Install
Download this repo and make symlinks for dotfiles.
```sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/hskwakr/wsl-dotfiles/main/bin/install.sh)"
```

### Init
Run tool installation scripts for Ubuntu 20.04 LTS.
```sh
cd ~/wsl-dotfiles && . .bashrc && \
./etc/init/build-tools.sh && . .bashrc && \
./etc/init/programming-runtime.sh && . .bashrc && \
./etc/init/util-tools.sh && . .bashrc
```

### Uninstall
Remove symlinks
```sh
cd ~ && ./wsl-dotfiles/bin/clean.sh && . .bashrc
```

Remove symlinks and uninstall tools installed from init then remove dotfile repo on local. 
```sh
cd ~ && ./wsl-dotfiles/bin/run-clean-scripts.sh && \
./wsl-dotfiles/bin/clean.sh && . .bashrc
```

# My idea
___How to deal with Git line ending issues between Windows and WSL?___  
I decide not to touch files on Windows from WSL and vice versa. 
