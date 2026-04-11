#! /usr/bin/env bash

CWD=$PWD

# make sure devbox global is activated
eval "$(devbox global shellenv)"

cd "$HOME/.config/nvim/py3nvim" || exit
uv venv --clear
uv sync
cd "$CWD" || exit
