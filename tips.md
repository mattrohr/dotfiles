Friends have asked about switching to Mac, so I've documented some basic tips here:

# Configuration:
Using vanilla un-configured or mildly-configured Mac OS for a month or so gives you a baseline for knowing when your configured Mac is operating oddly.

# Shortcuts:
## Shortcuts I use 100's of times a day:
- ⌘ + Space action to bring up spotlight search
- ⌘ + T action to bring up a new tab in your app (e.g. Chrome, Terminal)
- ⌘ + ~ switch between windows of an application
- ^ + tab move forward through tabs (in same window). Use it a ton for browser research
- ^ + shift + Tab move backward through tabs (in same window)
- ⌘ + C and ⌘ + V copy and paste with formatting
- ⌥ + ⌘ + Shift + V paste without formatting
- ⌘ + Q close (fully) app (note: Red X in top left is often a mix of closing the file and minimizing it. The app is technically still running. In Windows, an application that's still running is often still a RAM/CPU resource hog. Macs are more optimized, so it's usually not bad if the app is running in the background. I only use ⌘ + Q to reduce dock clutter, not for performance reasons.)
- ⌥ + ← or or → move text (e.g. terminal commands) by word units rather than character units
- ⌘ + click to open link in new browser tab

## Shortcuts I use 1-10 times a day's of times a day:
- Screen shot/screen capture
- ⌘ + Click on the title of a Finder window to navigate directories
- ⌘ + P print (note: you can easily save to pdf from the menu that appears)
- ⌘ + shift + . unhides and hides hidden system files
- ⌘ + shift + T reopen last closed browser tab(s). Reopens one if you quit only one, reopens all if you closed the whole browser
- ⌃ + R in terminal to search command history (improved with FZF)
- ^ + T in terminal to fuzzy search (requires FZF)
- ^ + C in terminal to change directory (requires FZF)
- In terminal, Putting a backslash in-front of a command, will run the non-aliased version (e.g. \ls)
- ⌃ + Z in terminal to suspend a process
## Shortcuts I should use, but old habits die hard:
- ⌘ + ↑ and ⌘ + ↓ to go up/down the folder hierarchy
- ⌘ + shift A for Applications folder while in Finder. Browse this folder to see what's available (Disk Utility, and Activity Monitor are particularly useful for power-users).
- In Terminal.app, typing caffeinate will prevent sleep
- F5 after typing partial word to see completion options

## Generic Tips:
- When your moving files and you need a "safe" space to drop a file in a directory with many other directories, you can drag the item to the Name/Date Modified/Size/Kind column
- When using Terminal.app, you can drag an item (file/directory) into the terminal to enter its full path
- Click and hold green traffic light in a window to have basic control over its position
- There's hidden options you can uncover with option. For example opening an image >> ⌥ + Click File gives you "Save As". If you click it and again press ⌥ + click Format dropdown, you have additonal file type options to save as.
- To change default application for a file. Right click a file of the file type you want to change the default of >> Get Info >> Open With dropdown >> Select application >> Change All...
- If you use Terminal/ZSH often, you may like to know difference between ZSH configuration files: https://unix.stackexchange.com/questions/71253/what-should-shouldnt-go-in-zshenv-zshrc-zlogin-zprofile-zlogout
- When selecting a large body of work, like text or photos, you don't need to click and drag. For text, for instance, you can click on one part, click where you want to start the copy, go press want to end the selection, press shift and click the ending
- If you need to mail something, you may select a person or organization in contacts, then hit ⌘ + P to format the envelope with recipients and your addresses.
- If you write your own command-line tools, you can begin them with a comma (e.g. /usr/local/bin/,test). If they're rarely used and you'll forget what their named, this lets you tab complete commas to find all your custom programs.
- [Be careful of copying commands from websites and pasting them in terminal](https://briantracy.xyz/writing/copy-paste-shell.html)