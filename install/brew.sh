#!/bin/bash

# Installs Homebrew and some of the common dependencies needed/desired for software development

# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew); then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make sure we’re using the latest Homebrew
brew update

# Install taps
brew tap hashicorp/tap

# Install the Homebrew packages I use on a day-to-day basis.
apps=(
  pyenv,
  hashicorp/tap/terraform
)

echo "Installing Brew apps"
for i in "${apps[@]}"; do
  echo "Installing $i"
  brew install "$i"
done

# Remove outdated versions from the cellar
brew cleanup
