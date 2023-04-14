#!/usr/bin/env zsh
set -Eeuo pipefail

brew unlink nano && brew link nano

alias nano=/opt/homebrew/bin/nano

grep -qxF "alias nano=/opt/homebrew/bin/nano" ~/.zshrc || echo "alias nano=/opt/homebrew/bin/nano" >> ~/.zshrc
grep -qxF 'export EDITOR=/opt/homebrew/bin/nano' ~/.zshrc || echo 'export EDITOR=/opt/homebrew/bin/nano' >> ~/.zshrc
grep -qxF 'export VISUAL="$EDITOR"' ~/.zshrc || echo 'export VISUAL="$EDITOR"' >> ~/.zshrc

# Enable Syntax Highlighting
touch ~/.nanorc
grep -qxF 'include "/opt/homebrew/share/nano/*.nanorc"' ~/.nanorc || echo 'include "/opt/homebrew/share/nano/*.nanorc"' >> ~/.nanorc

git config --global core.editor "/opt/homebrew/bin/nano"
