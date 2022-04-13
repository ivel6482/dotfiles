#!/bin/bash

set -e

DOTFILES_DIRECTORY="$HOME/.dotfiles"
SSH_DIRECTORY="$HOME/.ssh"

if ! [ -x "$(command -v ansible)" ]; then # Checks if package is NOT installed
  sudo apt install ansible -y
fi
