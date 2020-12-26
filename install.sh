#!/usr/bin/env zsh

# Ask for the administrator password upfront
sudo -v

# update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

if [ $(uname -s) = 'Darwin' ]; then
    echo "Setting up your Mac..."

    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Install programs in Brewfile
    brew bundle

    # Allow window manager (i.e. yabai) to load during startup
    echo "$USER ALL = (root) NOPASSWD: "$(which yabai)" --load-sa" | sudo tee -a /private/etc/sudoers.d/yabai2

    # Configure macOS settings
    source .macOS
elif [ $(uname -s) = 'Linux' ]; then
    echo "Setting up your Linux machine..."
else
    echo "No"
    exit 1
fi

# Configure shell
ln -s ${PWD} ~
ln -s ${PWD}/.prompt ~/.prompt
ln -s ${PWD}/.spectrum.zsh ~/.spectrum.zsh
ln -s ${PWD}/.aliases ~/.aliases
ln -s ${PWD}/.exports ~/.exports
ln -s ${PWD}/.functions ~/.functions
ln -s ${PWD}/.extra ~/.extra
ln -s ${PWD}/.gitconfig ~/.gitconfig
ln -s ${PWD}/.gitignore_global ~/.gitignore_global
ln -s ${PWD}/.yabairc ~/.yabairc
ln -s ${PWD}/.skhdrc ~/.skhdrc
ln -s ${PWD}/.hushlogin ~/.hushlogin
rm -rf $HOME/.zshrc
ln -s ${PWD}/.zshrc ~/.zshrc

# restart shell so path changes take effect.
exec $SHELL