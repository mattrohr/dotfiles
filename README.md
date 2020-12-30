<p align="center">
    <img width="75%" src="https://i.imgur.com/d0hGgVI.png" alt="Banner">
</p>

<p align="center">
    <a href="https://github.com/mattrohr/dotfiles/actions?query=workflow%3ACI">
        <img src="https://github.com/mattrohr/dotfiles/workflows/CI/badge.svg?branch=main" alt="CI Status Badge">
  </a>
</p>

## About
These files backup, restore, and sync my system settings with ubiquitous shell scripts.

## Installation
1. Log into Mac App Store so macOS apps specified in [`Brewfile`](https://github.com/mattrohr/dotfiles/blob/master/Brewfile) are installed.

2. Specify repository location:
```bash
mkdir -p ~/Projects && cd ~/Projects
```

3. Clone repository (requires **git**) and configure machine:
```bash
git clone https://github.com/mattrohr/dotfiles.git && cd dotfiles && source install.sh
```

4. See [`manual.md`](./manual.md) for manual installation steps.

## Notes
If `.secret` exists, it will be sourced in [`.zshrc`](https://github.com/mattrohr/dotfiles/blob/master/.zshrc) along with the other files. You may use this to add commands and files you don’t want to commit to a public repository like `~/.ssh/config`, `/etc/hosts`, and `~/.gnupg/`

Scripts are idempotent, they can safely be run again. Useful for when settings get reset, like when macOS updates clobber Touch ID sudo authentication permission.

Finally, if you're new to macOS, read [tips and tricks](./tips.md).

## Acknowledgements
- [Mathias Bynens](https://mathiasbynens.be/) for his [dotfiles repository structure](https://github.com/mathiasbynens/dotfiles)
- [Kevin Suttle](http://kevinsuttle.com/) for cataloging [macOS-Defaults project](https://github.com/kevinSuttle/macOS-Defaults), which provides sensible documentation for [`/.macOS`](https://github.com/mattrohr/dotfiles/blob/main/.macOS)
- [Anish Athalye](https://github.com/anishathalye) for his [prompt theme](https://github.com/anishathalye/dotfiles/blob/master/zsh/prompt.zsh)