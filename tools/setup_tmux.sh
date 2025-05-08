#!/bin/bash

sudo apt update
sudo apt install tmux

git clone https://github.com/Tylores/tmux-sessionizer.git "${XDG_CONFIG_HOME:-$HOME/.local/bin}"
