#!/bin/bash

sudo apt update
sudo apt install curl python3 python3-pip python3-venv

curl -sSL https://install.python-poetry.org | python3 -
poetry self update
