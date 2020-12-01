# Pre-Install
## Check Folders on Old System
```bash
cd && ls
cd ~/Desktop && ls
cd ~/Documents && ls
cd ~/Downloads && ls
cd ~/Movies && ls
cd ~/Music && ls
cd ~/Pictures && ls
cd ~/Applications && ls
cp ~/.gnupg/*
cp ~/.ssh/*
cp /etc/hosts
```

```bash
cd dotfiles
rm -rf Brewfile
brew bundle dump
git [add]/[commit]/[push] Brewfile
```

# Post-Install
## First party apps
### System Preferences
- Set ⌘ + bottom right hot corner to desktop: Desktop & Screen Saver >> Hot Corners >> bottom right >> ⌘ >> ⌘ Desktop
- (depends on display) Set display resolution to one notch larger
- System Preferences >> Security & Privacy >> General >> App Store and identified developers
- System Preferences >> Security & Privacy >> FileVault >> Turn on Filevault...
- System Preferences >> Security & Privacy >> Privacy >> Location Services >> Weather
- System Preferences >> Apple ID >> Keychain
- System Preferences >> Keyboard >> Input Sources >> + >> Greek >> Add >> "Use the Caps Lock key to Switch to and from U.S." (especially useful for communicating math in emails/texts/etc)
- System Preferences >> General >> Show scroll bars: >> Always
- System Preferences >> Security & Privacy >> Use apple Watch to unlock apps and your mac
- System Preferences >> Trackpad >> Tap to click

### Safari

- Install Instapaper extension
- Install Dark Reader for Safari extension
- Install extension 1Password extension
- Preferences >> Extensions > toggle extensions
- Preferences >> Disable "User Names and Passwords”
- Set Dark Reader to use system dark mode

### Activity Monitor
- View >> Update Frequency >> Very Often

### Mail
- Change Mail Swipe default from trash to archive
- Mail.app > Mail > Preferences > Viewing > Move discarded messages into Archive
- Disable loading remote content in Apple Mail

### Finder
- Preferences >> Sidebar >> Enable all items
- Advanced >> Remove items from the trash after 30 days
- View >> Show View Options >> Always open in list view >> Calculate all sizes >> Set as Defaults

### Time Machine
- Time Machine > Back up Automatically

### Apple Books
- download all available eBooks stored in iCloud

## Third party apps
### Optimus Player
- Add License

### PDF Expert
- Add License

### Simplify 3D
- Add License

### Chrome
- Sign-in, enable syncing (of extensions)
- Set Dark Reader to use system dark mode

### SuperDuper
- Add License

### Alfred
- Add License

### Aerial Screen Saver
- https://github.com/glouel/AerialCompanion/releases
- Screen Saver Options > Time > Change Videos based on Light Mode/Dark Mode
- Screen Saver Options > Videos > Gear Icon > Download All 4K

### Bartender

- License >> Enter license
- bury basically everything
- Add License

### Skype

- Manually change mode defaults: Skype Dark Mode: Skype >> Preferences >> Appearance >> Use system setting

### Slack

- Manually change mode defaults: Slack >> Preferences >> Appearance >> Sync with OS Setting

### Adobe Illustrator, InDesign, Photoshop, Lightroom Classic, Premiere, After Effects
### Fantastical
- sign in
- Calendar.app > Calendar > General > Default calendar app

### Spotify
Set streaming quality to very high

### ABBYY FineReader OCR For ScanSnap
- Configure ScanSnap to auto OCR, and to save to Downloads folder
- Launch ScanSnap Home > Scan > Edit Icon > Application > Send To > Add ABBYY App

### ABBYY FineReader OCR Pro
### MATLAB
### Readwise
- https://readwise.io/accounts/login/?next=/ibooks

### Xcode-Beta

### Wipr
- Wipr.app >> Automatic Refresh >> Automatic Refresh

### Windows via Bootcamp
### Parallels Desktop Pro or Business
### LabVIEW
- Add License

### SolidWorks

## User Interface
### Touch ID
- Add more fingers

### Keyboard and Touch Bar
- Remove Siri (too many accidental toggles)
- Show function keys on app-by-app basis, especially useful for MATLAB: system preferences >> keyboard >> shortcuts >> function keys >> + >> MATLAB
- Write text replacements (e.g. eml converts to your personal email address, eml1 converts to your work email address; \sqrt converts to √)

### Accessibility
- Download enhanced Samantha voice (useful for finding typos in writing)
- change hotkey to ⌘ + esc

### Hotkeys
- Swap Alfred with Spotlight key binds: ⌥ + Space to ⌘ + Space

### System Preferences
- Go through each section to see if any settings were missed