#!/bin/bash
export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"

# * symlinks
# =nvim
ln -s "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim
# =zshrc
ln -s "$PWD/.bashrc" "$XDG_CONFIG_HOME"/.bashrc
ln -s "$PWD/.zshrc" "$XDG_CONFIG_HOME"/.zshrc

# * packages
brewPackages=(
  fd
  rigrep
  starship
  lazygit
  zsh
)

for bp in "${brewPackages[@]}"; do
  # * install here
  echo "Installing $bp..."
  /home/linuxbrew/.linuxbrew/bin/brew install "$bp"
done

echo "All packages from the setup script have been installed."