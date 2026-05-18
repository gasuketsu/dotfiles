#! /usr/bin/env bash

# make sure mise is activated
MISE_BIN="$HOME/.local/bin/mise"

eval "$($MISE_BIN activate bash)"

bat cache --build
