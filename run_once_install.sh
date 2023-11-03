#!/bin/bash

echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing Homebrew packages..."
brew bundle --no-lock --file=/dev/stdin <<EOF
tap "homebrew/bundle"
tap "homebrew/cask"
tap "homebrew/core"
tap "noovolari/brew"
brew "awscli"
brew "chezmoi"
brew "colima"
brew "docker"
brew "git"
brew "neofetch"
brew "noovolari/brew/leapp-cli-darwin-arm64"
cask "1password"
cask "alfred"
cask "amethyst"
cask "firefox"
cask "gather"
cask "google-chrome"
cask "google-drive"
cask insomnia
cask "iterm2"
cask "leapp"
cask "libreoffice"
cask "obsidian"
cask "postman"
cask "slack"
cask "spotify"
cask "stats"
cask "visual-studio-code"
cask "webstorm"
cask "zoom"
EOF

echo "Installing nvm..."
/bin/bash -c "$(curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh)
