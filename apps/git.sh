#!/usr/bin/env zsh
set -Eeuo pipefail

git config --global credential.helper osxkeychain
git config --global init.defaultBranch main

USERNAME=`id -F`
EMAIL=`id -un`
git config --global user.name "$USERNAME"
git config --global user.email "$EMAIL@ebsco.com"