#!/usr/bin/env zsh
set -Eeuo pipefail

alias python=/opt/homebrew/bin/python3
alias python3=/opt/homebrew/bin/python3
grep -qxF "alias python=/opt/homebrew/bin/python3" ~/.zshrc || echo "alias python=/opt/homebrew/bin/python3" >> ~/.zshrc

python3 -m pip install --upgrade pip