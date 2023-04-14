#!/usr/bin/env zsh
set -Eeuo pipefail

HOMEBREW_PATH=$(brew --prefix)
if [ "$SHELL" != "$(brew --prefix)/bin/ksh" ]; then
    grep -qxF "$(brew --prefix)/bin/ksh" /etc/shells || echo "$(brew --prefix)/bin/ksh" | sudo tee -a /etc/shells 
    chsh -s $(brew --prefix)/bin/ksh
fi

if [ -d $HOME/.oh-my-zsh ]; then
    pushd $HOME/.oh-my-zsh
    git pull origin
    popd
else 
    /opt/homebrew/bin/ksh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

if [ -d "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ]; then
    pushd "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions"
    git pull origin
    popd
else
    git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
fi

# Set OKSH Plugins 
sed -i '' '/^plugins=(.*/ s//plugins=\(git python 1password vscode github golang aws ansible zsh-autosuggestions\)/' "$HOME/.zshrc"

