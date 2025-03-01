#!/bin/bash
export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"

# * symlinks
# =nvim
ln -s "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim

# * packages
packages=(
  zsh
  fd
  rigrep
  starship
  lazygit
)

for package in "${packages[@]}"; do
  # * install here
  echo "Installing $package..."
  /home/linuxbrew/.linuxbrew/bin/brew install "$package"
done