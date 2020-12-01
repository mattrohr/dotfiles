# Matt's dotfiles
![Customized shell](https://i.imgur.com/3VJyJ7S.png)
*Fig. 1: Customized shell*

These configuration files reproduce my system with little more than ubiquitous shell scripts. This makes hardware expendable in case of catastrophe, upgrade, or porting to a cluster.

## Installation
Homebrew is a dependency which installs tools and manages their versions. You can install it with:
```bash 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" &> /dev/null
```

Create (or select) and navigate to a folder to store your dotfiles, like:
```bash
mkdir ~/Library/Mobile\ Documents/com~apple~CloudDocs/Archive/dotfiles/
cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/Archive/dotfiles/
```

Clone and enter repository:
```bash
git clone https://github.com/mattrohr/dotfiles.git && cd dotfiles
```

Give current user execution permissions of shell scripts within the current directory, then configure machine with dotfiles:
```bash
sudo chmod u+x * && ./bootstrap.sh
```
Note: Scripts are idempotent, they can safely be run again. Useful for when settings get reset, like when macOS updates clobber Touch ID authentication permissions.

## Manual Changes
See [manual installation steps](./manual.md).

Finally, if you're new to macOS, read [tips and tricks](./tips.md).

## Acknowledgements
- [Mathias Bynen](https://mathiasbynens.be/) for his [dotfiles repository structure](https://github.com/mathiasbynens/dotfiles)
- [Anish Athalye](https://github.com/anishathalye) for his [prompt theme](hhttps://github.com/anishathalye/dotfiles/blob/master/zsh/prompt.zsh)
- [Kevin Suttle](http://kevinsuttle.com/) for cataloging [macOS-Defaults project](https://github.com/kevinSuttle/macOS-Defaults), which provides sensible documentation for [`~/.macos`](https://github.com/mattrohr/dotfiles/.macos)
- [Peter Bosse](https://github.com/ptb) and his [macOS Setup repository](https://github.com/ptb/mac-setup)