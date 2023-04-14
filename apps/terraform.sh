#!/usr/bin/env zsh
set -Eeuo pipefail

if [ ! -d "$HOME/.terraform" ] 
then
mkdir -p $HOME/.terraform
cat > $HOME/.terraform/terraform.tfrc <<EOL
provider_installation {
  dev_overrides {
    
  }
  direct {
    
  }
} 
EOL

fi
grep -qxF "export TF_CLI_CONFIG_FILE=$HOME/.terraform/terraform.tfrc" ~/.zshrc || echo "export TF_CLI_CONFIG_FILE=$HOME/.terraform/terraform.tfrc" >> ~/.zshrc
