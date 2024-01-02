# Pre-Install

Check folders on old system, including `.gitignore`'d files in project's folder:

```bash
ls ~/Desktop ~/Documents ~/Downloads ~/Movies ~/Music ~/Pictures /Applications ~/ && find ~/Developer -name '*.gitignore' -exec ls {} \; -exec cat {} \;
```

Make a list of currently-installed programs, and compare with `dotfiles` repository version:

```bash
brew bundle dump --file "Brewfile $(date)" && diff -u Brewfile ~/dotfiles/Brewfile
```

# Post-Install

## First-party apps

### Books.app

- Store > Authorizations > Authorize This Computer
- Preferences > General > enable "Download new purchases automatically"
- Preferences > Advanced > disable "Include store results when searching

### Calendar

- Preferences > General > Default calendar app > select Fantastical.app

### Contacts.app

- Preferences > Default Account > iCloud > disable
- Preferences > Default Account > Google > enable

### Control Center

- date/time in top right > Edit Widgets > match layout with iOS

### Finder.app

- Preferences > Sidebar > Favorites > Enable all but Locations: MBP and Hard disks
- Drag ~/Developer/ to sidebar
- Connect iPad Pro > Matt's iPad Pro > General > Options > enable Show this iPad when on Wi-Fi
- Matt's iPad Pro > [Music/Movies/TV Shows/Podcasts/Audiobooks/Books/Photos] > enable Sync [*] onto Matt's iPad Pro
- Right-click default dock icon's > Options > Remove from Dock

### Mail.app

- Preferences > Accounts > Account Information > Send large attachments with Mail Drop
- Preferences > Viewing > Move discarded items into: > Archive

### Photos.app

- Preferences > iCloud > enable iCloud Photos
- Preferences > iCloud > enable Download Originals to this Mac

### Safari.app

- Preferences > Extensions > enable
- (bottom right) > [settings icon] > + > select background
- Preferences > Advanced > Reading List > enable Save articles for offline reading automatically
- Preferences > Advanced > enable Show Develop menu in menu bar
- Dark Reader > Auto

### System Preferences.app

- Apple ID > Disable iCloud Mail
- Desktop & Screen Saver > select Dynamic Desktop
- Desktop & Screen Saver > Aerial > Automatically download videos and keep everything > Use my location to calculate sunrise and sunset
- Desktop & Screen Saver > Aerial > Settings > Cache > Limit cache size to > Unlimited
- Desktop & Screen Saver > Aerial > Settings > Overlays > Location > Position: bottom left
- Desktop & Screen Saver > Aerial > Settings > Overlays > Weather > Enable > Position: bottom left
- Desktop & Screen Saver > Aerial > Settings > Overlays > Weather > Icons: °F
- Desktop & Screen Saver > Aerial > Settings > Overlays > Weather > Location: Use current
- Desktop & Screen Saver > Aerial > Settings > Custom Sources > Download All Videos
- Siri > Siri Suggestions & Privacy > Safari > disable Show Siri Suggestions in App
- Language & Region > Translate Languages... > download all
- Internet Accounts > (activate)
- Internet Accounts > rename "Google" account
- Users & Groups > Login Items > Add Alfred, NightOwl
- Touch ID > Add Fingerprint(s)
- Accessibility > Siri > Enable Type to Siri
- Screen Time > Downtime > Scheduled > Turn On
- Screen Time > Options > Share across devices
- Security & Privacy > General > change to: Require password immediately after sleep or screen saver begins
- Security & Privacy > General > App Store and identified developers
- Security & Privacy > Privacy > Check all permissions
- Bluetooth > connect over-ear headphones and other devices
- Keyboard > Shortcuts > Spotlight > Show Finder Search Window > Rebind to ⌥Space
- Keyboard > Input Sources > + > Greek > Add > "Use the Caps Lock key to Switch to and from U.S."
- Displays > Arrangement > Option + drag external monitor onto built-in screen to mirror Displays.
- Displays > Display Settings > Optimize for: > select [external] display
- Displays > Night Shift > Schedule > Sunset to Sunrise
- Printers & Scanners > + > select Brother DCP-L2540DW series > Add
- Sidecar > disable Show Sidebar
- Battery > Power Adapter > Turn display off after > 20 min
- Time Machine > Select Disk
- Consider going through each section to see if any settings were missed

## Third-party apps

### Alfred.app

- General > Alfred Hotkey > rebind to ⌘Space
- General > Where are you: International > [current country]
- Features > Default Results > Extras > enable Folders, Documents, Text Files, Images

### Backblaze.app

- Inherit backup state
- Settings > Performance > + > add [home network]
- Settings > Exclusions > + > add ~/Developer/\*/[raw/interim/final data folders]
- Settings > Exclusions > + > add ~/Downloads/Torrents
- Settings > Exclusions > + > add ~/Movies/TV

### Bartender.app

- Preferences > License > enter License
- General > Startup > Launch Bartender at login
- Preferences > Show For Updates > enable Battery, Time Machine, WiFi

### Chrome.app

- ⋮ > Turn on sync > Link data > Yes, I'm in
- ⋮ > Settings > Appearance > disable Show warning before quitting with ⌘Q

### Fantastical.app

- Preferences > General > Default task list > change to main account
- Preferences > General > Default event duration > 15 Minutes
- Preferences > General > Days per week > 14
- Preferences > General > disable Play user interface sounds
- Preferences > Calendars > Disable Contacts, Anniversaries, Birthdays
- Preferences > Calendars > Default task list > change to main account

### Messages.app

- Messages > General > Share Automatically > Always Ask
- Messages > Preferences > iMessage > Enable Messages in iCloud
- Messages > Preferences > iMessage > Start new Conversations from [email]

### NightOwl.app

- enable Sunrise/Sunset
- Settings > disable Play Sound
- Settings > disable Hotkey

#### Install
- [3Dconnexion 3DxWare](https://3dconnexion.com/us/drivers/), [Simplify3D](https://cloud.simplify3d.com/account/login), [PDF Expert](https://pdfexpert.com/downloads), [Xcode beta](https://developer.apple.com/download/), [Safari Technology Preivew](https://developer.apple.com/safari/technology-preview/)

#### Setup Windows
- [Download and Install Parallels Free Trial](https://parallels.com). Register for [Windows 11 Insider Program](https://insider.windows.com/en-us/register). Download [Windows Insider Preview](https://www.microsoft.com/en-us/software-download/windowsinsiderpreviewARM64). With Parallels open, double-click on Windows 11 image. Complete installation. When complete, configure resource allocation: Hardware > Manual. Continue.

#### Add License Key
- Simplify3D, PDF Expert, Optimus Player
