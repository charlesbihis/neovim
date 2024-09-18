# My Neovim Setup

This is my personal Neovim setup.  I use [LazyVim](https://www.lazyvim.org/) as my base with configurations and customizations on top.

## Installation

### Install Neovim

Followed instructions here to install Neovim...

- <https://github.com/neovim/neovim/blob/master/INSTALL.md>

Steps summarized below.

1. Install binary

```bash

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
```

2. Add to PATH

Add the following to shell config (`~/.bashrc``, `~/.zshrc`, etc)

```bash
export PATH="$PATH:/opt/nvim-linux64/bin"
```

### Install LazyVim

Followed instructions here to install LazyVim...

- <https://www.lazyvim.org/installation>

Steps summarized below.

1. Backup current Neovim files.

```bash
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

# or start fresh (I usually do this)
mv ~/.config/nvim /tmp/
```

2. Clone the LazyVim template

```bash
git clone https://github.com/LazyVim/starter ~/.config/nvim
```

3. Remove the `.git` folder

Had to do this once just to allow me to use as a git repo later, which turned out to be this repo.

