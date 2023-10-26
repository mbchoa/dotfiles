#!/bin/bash

# Installs (rtx)[https://github.com/jdx/rtx] a polyglot runtime manager. Combines tools like
# nvm, pyenv, rvm, etc. into one tool.

# Ask for the administrator password upfront
sudo -v

# Check for rtx and install it if missing
if test ! $(which rtx); then
  echo "Installing rtx..."
  /bin/bash -c "$(curl https://rtx.pub/install.sh)"
else
  echo "rtx found. Skipping installation."
fi
