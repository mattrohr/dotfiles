# Pre-Install

Check folders on old system, including `.gitignore`'d files in project's folder:
```bash
ls ~/Desktop ~/Documents ~/Downloads ~/Movies ~/Music ~/Pictures /Applications ~/ && find ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/Projects -name '*.gitignore' -exec ls {} \; -exec cat {} \;
```

Make a list of currently-installed programs, and compare with `dotfiles` repository version:
```bash
brew bundle dump --file "Brewfile $(date)" && diff -u Brewfile ~/dotfiles/Brewfile 
```
# Post-Install
## First-party apps

### System Preferences.app
- Apple ID >> Disable Mail
- Notifications >> Reminders >> Uncheck “Show in Notification Center” and “Badge app icon”
- Notifications >> Do Not Disturb >> Turn on Do Not Disturb same hours as Wind Down
- Notifications >>  Do Not Disturb >> Allow repeated calls
- Internet Accounts >> (activate)
- Wallet & Apple Pay >> Add Card
- Touch ID >> Add Fingerprint
- Users & Groups >> Change profile photo
- Screen Time >> Downtime >> Turn On
- Security & Privacy >> Filevault  >> Turn On FileVault
- Security & Privacy >> General >> App Store and identified developers
- Security & Privacy >> FileVault >> Turn on Filevault...
- Security & Privacy >> Privacy >> Location Services >> Weather
- Security & Privacy >> Use apple Watch to unlock apps and your mac
- Keyboard >> Shortcuts >> Spotlight >> Show Finder Search Window >> Rebind to ⌥Space
- Keyboard >> Input Sources >> + >> Greek >> Add >> "Use the Caps Lock key to Switch to and from U.S." (especially useful for communicating math in emails/texts/etc)
- Trackpad >> Look up & data detectors >> Tap with three fingers
-  Displays >> Arrangement >> Option + drag external monitor onto built-in screen to mirror Displays. In “built-in Retina display” window, select “Best for external display”
- Displays >> Night Shift >> Schedule >> Sunset to Sunrise
- Time Machine >> Select Disk
- Go through each section to see if any settings were missed

### Finder.app
- Preferences >> Sidebar >> Favorites >> Enable all but On My Mac

### Contacts.app
- Preferences >> Default Account >> Google

### Control Center
- date/time in top right >> Edit Widgets >> match layout with iOS

### Mail.app
- Preferences >> Accounts >> Account Information >> Send large attachments with Mail Drop
- Preferences >> Viewing >> Move discarded items into >> Archive
- Preferences >> Viewing >> Uncheck Load remote content in messages
- View >> Customize Toolbar >> add Sidebar button to right of Filter button

### Safari.app
- Preferences >> Extensions >> enable
- (bottom right) >> + >> select background

## Third-party apps

### Fantastical.app
- Preferences >> General >> Default event duration >> 15 Minutes
- Preferences >> General >> Days per week >> 14
- Preferences >> Calendars >> Disable Contacts, Anniversaries, Birthdays

### Spotify.app
- Spotify >> Music Quality >> Streaming quality >> Very High
- Spotify >> Startup and Window Behavior >> Open Spotify automatically after you log into the computer >> No 

### Nova.app
- Nova >> Preferences >> Editor >> Indentation >> Prefer Indent Using >> Spaces
- Nova >> Tools >> Command Line Tool >> Install

### Backblaze.app
- Inherit backup state
- Settings >> Exclusions >> + >> add project data folders and ~/Movies

### Launch and Configure
- Aerial, Bartender, Chrome
- Alfred assign shortcut key to ⌘Space

### Install
- ABBYY FineReader OCR Pro, MATLAB, Windows via Bootcamp, SolidWorks, LabVIEW, Parallels Desktop Pro, Adobe Illustrator, InDesign, Photoshop, Lightroom Classic, Premiere, After Effects

### Add License Key
- SuperDuper, Bartender, Simplify3D, PDF Expert, Optimus Player, Alfred