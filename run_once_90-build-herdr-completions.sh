#! /usr/bin/env bash

# make sure devbox global is activated
eval "$(devbox global shellenv)"

herdr completion zsh >~/.config/zsh/completions/_herdr
