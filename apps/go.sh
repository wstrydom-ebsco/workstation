#!/usr/bin/env zsh
set -Eeuo pipefail

export GOPATH=$HOME/Developer/go 
export GOROOT="$(brew --prefix golang)/libexec" 
export PATH="$PATH:$GOPATH/bin:$GOROOT/bin" 

mkdir -p $HOME/Developer/go/{bin,src,pkg}

grep -qxF "export GOPATH=$GOPATH" ~/.zshrc || echo "export GOPATH=$GOPATH" >> ~/.zshrc
grep -qxF "export GOROOT=$GOROOT" ~/.zshrc || echo "export GOROOT=$GOROOT" >> ~/.zshrc
grep -qxF 'export PATH=$PATH:$GOPATH/bin:$GOROOT/bin' ~/.zshrc || echo 'export PATH=$PATH:$GOPATH/bin:$GOROOT/bin' >> ~/.zshrc
