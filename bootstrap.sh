#!/usr/bin/env zsh

echo "Setting up your Mac..."

# Ask for the administrator password upfront
sudo -v

# update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install programs references in Brewfile
brew bundle

# Configure MacOS settings
./.macos

# Configure python environment (from: https://opensource.com/article/19/5/python-3-default-mac)
./.python

# Configure shell
ln -s ${PWD} ~
ln -s ${PWD}/.aliases ~/.aliases
ln -s ${PWD}/.exports ~/.exports
ln -s ${PWD}/.functions ~/.functions
ln -s ${PWD}/.gitconfig ~/.gitconfig
ln -s ${PWD}/.gitignore_global ~/.gitignore_global
ln -s ${PWD}/.hushlogin ~/.hushlogin
rm -rf $HOME/.zshrc
ln -s ${PWD}/.zshrc ~/.zshrc

# restart shell so path changes take effect.
exec $SHELL