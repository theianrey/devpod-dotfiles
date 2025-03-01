#!/bin/bash
export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"

# * symlinks
# =nvim
ln -s "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim
# =bashrc
echo "linking .bashrc"
mv "$HOME"/.bashrc "$HOME"/.bashrc-bak
ln -s "$PWD/.bashrc" "$HOME"/.bashrc
# =zshrc
# echo "linking .zshrc"
# mv "$HOME"/.zshrc "$HOME"/.zshrc-bak
# ln -s "$PWD/.zshrc" "$HOME"/.zshrc

# * packages
brewPackages=(
  fd
  rigrep
  lazygit
  zsh
)

for bp in "${brewPackages[@]}"; do
  # * install here
  echo "Installing $bp..."
  /home/linuxbrew/.linuxbrew/bin/brew install "$bp"
done

# echo "use zsh"
# * exec zsh
# exec zsh

# * remove brew/core for storage space
echo "untap homebrew/core"
/home/linuxbrew/.linuxbrew/bin/brew untap homebrew/core

echo "All packages from the setup script have been installed."
