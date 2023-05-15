#!/bin/bash

# This script configures my Node.js development setup.

if test ! $(which fnm)
then
  echo "Installing fnm..."

  # Install fnm
  curl -fsSL https://fnm.vercel.app/install | bash
fi

if test ! $(which node)
then
  echo "Installing latest stable version of Node..."

    # Install the latest LTS version
    fnm install --lts
fi

if test ! $(which pnpm)
then
  echo "Installing pnpm..."

  curl -fsSL https://get.pnpm.io/install.sh | sh -
fi

# Globally install with npm
# To list globally installed npm packages and version: npm list -g --depth=0
packages=("diff-so-fancy" "typescript")

echo "Installing global npm packages"
for i in "${packages[@]}"; do
  echo "Installing $i"
  pnpm install -g "$i"
done
