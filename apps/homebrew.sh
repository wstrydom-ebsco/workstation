#!/usr/bin/env zsh
set -Eeuo pipefail

if [ -d "/opt/homebrew/bin/" ] 
then
    echo "--- Upgrading Homebrew"
    brew update
else
    echo "--- Installing Homebrew"
    
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    export PATH=/opt/homebrew/bin:$PATH
fi
# $(brew --prefix)
grep -qxF 'export PATH=/opt/homebrew/bin:$PATH' ~/.zshrc || echo 'export PATH=/opt/homebrew/bin:$PATH' >> ~/.zshrc
brew upgrade
brew bundle