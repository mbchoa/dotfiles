#!/bin/bash

# This script configures my Node.js development setup.

# if test ! $(which fnm); then
#   echo "Installing fnm..."

#   # Install fnm
#   curl -fsSL https://fnm.vercel.app/install | bash
# fi

if test ! $(which rtx); then
  echo "rtx is required to install Node. Please run the rtx.sh script first."
  exit 1
fi

# Install Node
if test ! $(which node); then
  echo "Installing latest stable version of Node..."

  # Install the latest version
  rtx use --global node@latest
fi

# Install pnpm
if test ! $(which pnpm); then
  echo "Installing pnpm..."

  curl -fsSL https://get.pnpm.io/install.sh | sh -
fi

# Install bun
if test ! $(which bun); then
  echo "Installing bun..."

  curl -fsSL https://bun.sh/install | bash # for macOS, Linux, and WSL
fi

# Globally install with pnpm
# To list globally installed pnpm packages and version: pnpm list -g --depth=0
packages=("diff-so-fancy" "typescript")

echo "Installing global pnpm packages"
for i in "${packages[@]}"; do
  echo "Installing $i"
  pnpm install -g "$i"
done
