<p align="center">
<img width="75%" src="https://i.imgur.com/imF4dUf.png" alt="Banner">
</p>

<p align="center">
<b>Seamless command-line experience across macOS, Linux, and Windows Subsystem for Linux</b>
</p>

<p align="center">
<a href="https://github.com/mattrohr/dotfiles/actions?query=workflow%3Abuild">
<img src="https://github.com/mattrohr/dotfiles/workflows/build/badge.svg" alt="Build Status Badge">
</a>
</p>

## About

Dotfiles are shell script files that backup, restore, and sync system settings. Named with a leading period (e.g. [`.zshrc`](./.zshrc)), they remain hidden on Unix-like operating systems.

## Installation

1. (_macOS only_) Sign into Mac App Store to install macOS apps listed in [`Brewfile`](./Brewfile) may be installed.

2. Clone repository and configure the machine:

```bash
git clone https://github.com/mattrohr/dotfiles.git && cd dotfiles && ./install.sh
```

3. Refer to [`manual.md`](./manual.md) for manual installation steps.

## Notes

"If `.secret` exists, it will be sourced in [`.zshrc`](./.zshrc) with other files. Use it for commands, files, and directories you don’t want in a public repository, like server credentials, blacklisted websites, and cryptographic keys."

Scripts are idempotent: they can be rerun safely. Useful for when settings reset, like after macOS updates reset Touch ID sudo authentication."

If you're new to macOS, read [tips and tricks](./tips.md).

## Acknowledgements

- [Mathias Bynens](https://mathiasbynens.be/) for his [dotfiles repository structure](https://github.com/mathiasbynens/dotfiles)
- [Kevin Suttle](http://kevinsuttle.com/) for his [macOS defaults catalog](https://github.com/kevinSuttle/macOS-Defaults), which provides sensible documentation for [`.macos`](https://github.com/mattrohr/dotfiles/blob/main/.macos)
- [Anish Athalye](https://github.com/anishathalye) for his [prompt theme](https://github.com/anishathalye/dotfiles/blob/master/zsh/prompt.zsh)
