#!/bin/bash

# Installs (mise)[https://github.com/jdx/mise] a polyglot runtime manager. Combines tools like
# nvm, pyenv, rvm, etc. into one tool.

# Ask for the administrator password upfront
sudo -v

# Check for rtx and install it if missing
if test ! $(which mise); then
  echo "Installing mise..."
  curl https://mise.run | sh
else
  echo "mise found. Skipping installation."
fi
