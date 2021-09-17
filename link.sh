#!/bin/bash

echo "Linking dotfiles..."
ln -sf ~/Documents/dotfiles/.config/nvim ~/.config/nvim
ln -sf ~/Documents/dotfiles/.config/fish/config.fish ~/.config/fish/config.fish
ln -sf ~/Documents/dotfiles/.vimrc ~/.vimrc
ln -sf ~/Documents/dotfiles/tmux ~/tmux
ln -sf ~/Documents/dotfiles/.config/i3 ~/.config/i3
ln -sf ~/Documents/dotfiles/.config/polybar ~/.config/polybar
echo "Success"
