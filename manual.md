# Windows
## Post-Install
### Third-party apps
#### Install
- SolidWorks, Keithley KickStart, Intel Quartus Prime

# macOS
## Pre-Install
Check folders on old system, including `.gitignore`'d files in project's folder:
```bash
ls ~/Desktop ~/Documents ~/Downloads ~/Movies ~/Music ~/Pictures /Applications ~/ && find ~/Projects -name '*.gitignore' -exec ls {} \; -exec cat {} \;
```

Make a list of currently-installed programs, and compare with `dotfiles` repository version:
```bash
brew bundle dump --file "Brewfile $(date)" && diff -u Brewfile ~/dotfiles/Brewfile 
```

## Post-Install
### First-party apps

#### Control Center
- date/time in top right >> Edit Widgets >> match layout with iOS

#### System Preferences.app
- Apple ID >> Disable Mail
- Siri >> Safari >> Disable Show Siri Suggestions in App
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
- Displays >> Arrangement >> Option + drag external monitor onto built-in screen to mirror Displays. In “built-in Retina display” window, select “Best for external display”
- Displays >> Night Shift >> Schedule >> Sunset to Sunrise
- Time Machine >> Select Disk
- Go through each section to see if any settings were missed
- Startup Disk >> Unlock >> Select the startup disk that has the default operating system you want to use

#### Finder.app
- Preferences >> Sidebar >> Favorites >> Enable all but On My Mac
- Matt's iPad Pro >> General >> Options >> Check Show this iPad when on Wi-Fi
- Matt's iPad Pro >> Movies >> Check Sync Movies onto Matt's iPad Pro
- Matt's iPad Pro >> TV Shows >> Check Sync TV Shows onto Matt's iPad Pro
- Matt's iPad Pro >> Books >> Check Sync Books onto Matt's iPad Pro

#### Contacts.app
- Preferences >> Default Account >> Google

#### Calendar
- Calendar >> Preferences >> Default calendar app: select Fantastical.app
- Calendar >> Preferences >> Alerts >> Set All Day Events: None
- Calendar >> Preferences >> Alerts >> Birthdays: None

#### Mail.app
- Preferences >> Accounts >> Account Information >> Send large attachments with Mail Drop
- Preferences >> Viewing >> Move discarded items into >> Archive
- Preferences >> Viewing >> Uncheck Load remote content in messages
- View >> Customize Toolbar >> add Sidebar button to right of Filter button

#### Safari.app
- Preferences >> Extensions >> enable
- (bottom right) >> + >> select background

#### Boot Camp Assistant.app
- [Download Windows 10](https://www.microsoft.com/en-us/software-download/windows10)
- Partition ~200 GB for Windows

### Third-party apps
#### Chrome.app
- Log in and sync extensions
- ... >> Settings >> Appearance >> Show warning before quitting with ⌘Q

#### Fantastical.app
- Preferences >> General >> Default event duration >> 15 Minutes
- Preferences >> General >> Days per week >> 14
- Preferences >> Calendars >> Disable Contacts, Anniversaries, Birthdays

#### Spotify.app
- Spotify >> Music Quality >> Streaming quality >> Very High
- Spotify >> Startup and Window Behavior >> Open Spotify automatically after you log into the computer >> No 

#### Nova.app
- Nova >> Preferences >> Editor >> Indentation >> Prefer Indent Using >> Spaces
- Nova >> Tools >> Command Line Tool >> Install

#### Backblaze.app
- Inherit backup state
- Settings >> Exclusions >> + >> add project data folders and ~/Movies

#### Launch and Configure
- Aerial, Bartender, Chrome
- Alfred assign shortcut key to ⌘Space

#### Install
- ABBYY FineReader OCR Pro, MATLAB, Adobe Illustrator, InDesign, Photoshop, Lightroom Classic, Premiere, After Effects, 3Dconnexion 3DxWare

#### Add License Key
- SuperDuper, Bartender, Simplify3D, PDF Expert, Optimus Player, Alfred
