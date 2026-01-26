#!/bin/bash

# nvim requirments
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc build-essential libreadline-dev ripgrep unzip git xclip npm luarocks neovim
sudo npm install -g tree-sitter-cli

# kickstart 
sudo rm -rf ~/.config/nvim
sudo rm -rf ~/.local/share/nvim/lazy
sudo rm -rf ~/.local/state/nvim/lazy
sudo rm -rf ~/.config/nvim/lazy-lock.json
git clone -b personal https://github.com/Tylores/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
