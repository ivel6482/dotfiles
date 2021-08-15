#!/bin/bash

echo "Linking dotfiles..."
ln -sf ~/Documents/dotfiles/.config/nvim ~/.config/nvim
ln -sf ~/Documents/dotfiles/.config/fish/config.fish ~/.config/fish/config.fish
echo "Success"
