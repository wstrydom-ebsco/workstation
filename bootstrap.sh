#!/usr/bin/env zsh
echo "Running SUDO"
sudo -v

# we need XCode Command Line Utils
. ./apps/xcode.sh

# Ensure homebrew is installed
. ./apps/homebrew.sh

# Git is used later on
echo "--- Git"
. ./apps/git.sh

# Install Shells, with KSH being default
echo "--- KSH"
. ./apps/ksh.sh
echo "--- BASH"
. ./apps/bash.sh

# Install toolchains
echo "--- Go"
. ./apps/go.sh
echo "--- Nano"
. ./apps/nano.sh
echo "--- Python"
. ./apps/python.sh
echo "--- Terraform"
. ./apps/terraform.sh
echo "--- Typescript"
. ./apps/typescript.sh
echo "--- Visual Studio Code"
. ./apps/vscode.sh 

# Update macOS with opiniated defaults
echo "--- macOS Defaults"
. ./defaults/defaults.sh

echo "!!!! DONE !!!!" 
echo "Some settings will only take effect when you reboot"