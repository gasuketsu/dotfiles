#! /usr/bin/env bash

if grep -q "source ~/.config/bash/config.bash" ~/.bashrc; then
    echo "bashrc already configured"
else
    echo "Configuring bashrc"
    echo "source ~/.config/bash/config.bash" >>~/.bashrc
fi
