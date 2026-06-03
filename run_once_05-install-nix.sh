#! /usr/bin/env bash

if ! command -v nix >/dev/null 2>&1; then
    curl -fsSL https://install.determinate.systems/nix | sh -s -- install
fi
