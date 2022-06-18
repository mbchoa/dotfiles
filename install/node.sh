#!/bin/bash

# This script configures my Node.js development setup.

if test ! $(which nvm)
then
  echo "Installing nvm..."

  # Install nvm
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

  # Setup PATH and load nvm
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

if test ! $(which node)
then
  echo "Installing latest stable version of Node..."

    # Install the latest stable version of node
    nvm install stable

    # Switch to the installed version
    nvm use node

    # Use the stable version of node by default
    nvm alias default node
fi

# Globally install with npm
# To list globally installed npm packages and version: npm list -g --depth=0
#
# Some descriptions:
# diff-so-fancy — sexy git diffs
packages=("diff-so-fancy" "typescript")

echo "Installing global npm packages"
for i in "${packages[@]}"; do
  echo "Installing $i"
  npm install -g "$i"
done

npm install -g "${packages[@]}"
