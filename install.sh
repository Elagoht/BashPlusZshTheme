#!/bin/env bash

# Download theme
curl \
    -sfSL "https://raw.githubusercontent.com/Elagoht/BashPlusZshTheme/main/bashplus.zsh-theme" \
    -o ~/.oh-my-zsh/themes/bashplus.zsh-theme

# Activate theme
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="bashplus"/' ~/.zshrc

if [[ "$(grep '^plugins' ~/.zshrc)" =~ "virtualenv" ]]; # If not already added
then # add the virtualenv plugin
    sed 's/^plugins=(/plugins=(virtualenv /' ~/.zshrc
fi