#!/bin/bash

sudo apt update
sudo apt install tmux fzf

# config mouse on for all new sessions
tmux set-options -s $SSH_SESSION tmux set-mouse on
