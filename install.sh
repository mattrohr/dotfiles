#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

if [ "$(uname -s)" = 'Darwin' ]; then
    echo "Setting up your Mac..."
    # Enable tools for UNIX-style development, like Make
    xcode-select --install
    
    # Agree to the Xcode license
    sudo xcodebuild -license accept

    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
 
    # Install programs in Brewfile
    brew bundle --verbose
    
    # Install fzf key bindings
    $(brew --prefix)/opt/fzf/install
    
    # Finish installations
    open /opt/homebrew/Caskroom/papers/latest/Papers\ Installer.app
    open /opt/homebrew/Caskroom/backblaze/*/Backblaze\ Installer.app

    # Allow automatic git commit signing
    FILE=~/.gnupg/gpg-agent.conf
    if [ -f "$FILE" ] && ! grep "pinentry-program /usr/local/bin/pinentry-mac" "$FILE"; then
        echo "pinentry-program /usr/local/bin/pinentry-mac" | sudo tee -a "$FILE";
    fi  

    # Configure macOS settings    
    ./.macos
elif [ "$(uname -s)" = 'Linux' ]; then
    echo "Setting up your Linux machine..."
    
    # Populate list of available software
    sudo apt update

    # Set default shell to zsh, so it's consistent with macOS
    sudo apt install zsh
    sudo chsh -s "$(command -v zsh)"

    # Install shell quality of life improvements
    sudo apt install fzf fasd zsh-syntax-highlighting zsh-autosuggestions tldr tree
else
    echo "No"
    exit 1
fi

# Link shell configurations to home and root user directories
ln -s "$PWD" ~
ln -s "${PWD}"/.aliases ~/.aliases
ln -s "${PWD}"/.functions ~/.functions
ln -s "${PWD}"/.gitconfig ~/.gitconfig
ln -s "${PWD}"/.gitignore_global ~/.gitignore_global
ln -s "${PWD}"/.hushlogin ~/.hushlogin
ln -s "${PWD}"/.prompt ~/.prompt
ln -s "${PWD}"/.secret ~/.secret
ln -s "${PWD}"/.spectrum ~/.spectrum
ln -s "${PWD}"/secret/.gnupg ~/.gnupg
ln -s "${PWD}"/secret/.ssh ~/.ssh
rm -rf "$HOME"/.zshrc
ln -s "${PWD}"/.zshrc ~/.zshrc

FILE1=/etc/hosts
FILE2="${PWD}"/secret/hosts
if [ -f "$FILE1" ] && [ -f "$FILE2" ]; then
    sudo rm -rf "$FILE1" && sudo ln "$FILE2" "$FILE1"
else
    echo "$FILE1 or $FILE2 don't exist."
fi

echo "Done. Changes may require a restart to take effect."

# Restart shell so path changes take effect.
exec "$SHELL"
