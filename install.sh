#!/bin/bash
export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"

# * symlinks
# =nvim
ln -s "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim
# =zshrc
ln -s "$PWD/.zshrc" "$XDG_CONFIG_HOME"/.zshrc

echo "Installing homebrew..."

./"$PWD"/homebrew.sh

echo "Done homebrew install."

# * packages
brewPackages=(
  zsh
  fd
  rigrep
  starship
  lazygit
)

for bp in "${brewPackages[@]}"; do
  # * install here
  echo "Installing $bp..."
  /home/linuxbrew/.linuxbrew/bin/brew install "$bp"
done

# set zsh shell
chsh -s $(which zsh)

echo "go: $RUNTIME"
echo "All packages from the setup script have been installed."