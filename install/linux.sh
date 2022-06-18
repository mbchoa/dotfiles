#!/bin/sh

# Update and upgrade local Linux distro

sudo apt update
sudo apt upgrade

# Install essential libraries we'll need

sudo apt-get install build-essential
sudo apt-get install gcc
