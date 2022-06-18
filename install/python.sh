#!/bin/bash

# This script configures my Python development setup. Note that
# pyenv is installed by the Homebrew install script.

if test ! $(which python)
then
    echo "Installing a stable versions of Python..."

    # Install latest stable Python 2
    pyenv install 2.7.18

    # Install latest stable Python 3
    pyenv install 3.10.4

    # Rehashes pyenv shims, needed after installing executables
    pyenv rehash

    echo "Installing pyenv virtualenv plugin..."
    git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
fi
