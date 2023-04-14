#!/usr/bin/env zsh
set -Eeuo pipefail

echo $(brew --prefix)/bin/bash | sudo tee -a /etc/shells
# chsh -s $(brew --prefix)/bin/bash