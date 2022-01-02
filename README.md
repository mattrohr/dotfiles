<p align="center">
<img width="75%" src="https://i.imgur.com/imF4dUf.png" alt="Banner">
</p>

<p align="center">
<b>Consistent command-line experience across macOS, Linux, and Windows Subsystem for Linux</b>
</p>

<p align="center">
<a href="https://github.com/mattrohr/dotfiles/actions?query=workflow%3Abuild">
<img src="https://github.com/mattrohr/dotfiles/workflows/build/badge.svg?branch=main" alt="Build Status Badge">
</a>
</p>

## About

These files backup, restore, and sync my system settings with ubiquitous shell scripting. They're called "dotfiles" because they typically are named with a leading period (e.g. [`.zshrc`](./.zshrc)), which makes them hidden by default on Unix-like operating systems.

## Installation

1. (_macOS only_) Log into Mac App Store so macOS apps specified in [`Brewfile`](./Brewfile) may be installed.

2. (_Windows only_) Join [Windows Insider Program](ms-settings:windowsinsider), select Dev Channel, [update Windows](ms-settings:update). Run Command Prompt.exe as administrator, enter `wsl --install` to install Windows Subsystem for Linux. [Install App Installer](https://www.microsoft.com/p/app-installer/9nblggh4nns1?ocid=9nblggh4nns1_ORSEARCH_Bing&rtc=1&activetab=pivot:overviewtab), [select and install packages](https://winstall.app):

```PowerShell
winget install AgileBits.1Password && winget install Microsoft.WindowsTerminal && winget install Microsoft.VisualStudioCode-System-x64 && winget install Adobe.AdobeAcrobatReaderDC && winget install 7zip.7zip && winget install Arduino.Arduino && winget install Google.Chrome && winget install Zoom.Zoom && winget install Python.Python && winget install Spotify.Spotify
```

3. Clone repository and configure machine:

```bash
git clone https://github.com/mattrohr/dotfiles.git && cd dotfiles && ./install.sh
```

4. See [`manual.md`](./manual.md) for manual installation steps.

## Notes

If `.secret` exists, it will be sourced in [`.zshrc`](./.zshrc) along with the other files. You may use this to add commands, files, and directories you don’t want to commit to a public repository like server credentials (i.e. `~/.ssh/config`), blacklisted websites (i.e. `/etc/hosts`), and cryptographic keys (i.e. `~/.gnupg/`).

Scripts are idempotent: they can safely be run again. This is useful when settings get reset, like when macOS updates clobber Touch ID sudo authentication.

Finally, if you're new to macOS, read [tips and tricks](./tips.md).

## Acknowledgements

- [Mathias Bynens](https://mathiasbynens.be/) for his [dotfiles repository structure](https://github.com/mathiasbynens/dotfiles)
- [Kevin Suttle](http://kevinsuttle.com/) for his [macOS defaults catalog](https://github.com/kevinSuttle/macOS-Defaults), which provides sensible documentation for [`.macos`](https://github.com/mattrohr/dotfiles/blob/main/.macos)
- [Anish Athalye](https://github.com/anishathalye) for his [prompt theme](https://github.com/anishathalye/dotfiles/blob/master/zsh/prompt.zsh)
