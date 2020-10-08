# Matt's dotfiles
**Warning:** If you try these dotfiles: first clone or fork this repository, review code, then remove unwanted bits. Don’t blindly use settings unless you know what that entails. Use at your own risk!

## Install
Homebrew is a dependency, which you can install with:
```bash 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" &> /dev/null
```
Note that this install script can safely be run multiple times.

I store my dotfiles in iCloud. If this is a new Mac, iCloud folders probably wouldn't have had time to sync yet. You may create and navigate to it with:
```bash
mkdir ~/Library/Mobile\ Documents/com~apple~CloudDocs/Archive/dotfiles/
cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/Archive/dotfiles/
```

Give current user execution permissions of shell scripts within the current directory:
```bash
sudo chmod +x *
```
Clone repository and run install script:
```bash
git clone https://github.com/mattrohr/dotfiles.git && cd dotfiles && source bootstrap.sh
```

## Manual Changes

Check out [manual installation steps](./manual.md).

Finally, if you're new to Mac, checkout [tips and tricks](./tips.md).

## Thanks
* [Mathias Bynen](https://mathiasbynens.be/) and his [dotfiles repository](https://github.com/mathiasbynens/dotfiles)
* [Peter Bosse](https://github.com/ptb) and his [macOS Setup repository](https://github.com/ptb/mac-setup)
* [Kevin Suttle](http://kevinsuttle.com/) and his [macOS-Defaults project](https://github.com/kevinSuttle/macOS-Defaults), which aims to provide better documentation for [`~/.macos`](https://mths.be/macos)