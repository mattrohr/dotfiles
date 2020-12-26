Friends have asked about switching to Mac, so I've documented some tips here:

# Configuration:
Using vanilla un-configured or mildly-configured Mac OS for a month or so gives you a baseline for knowing when your configured Mac is operating oddly.

# Shortcuts:
## Shortcuts I use 100's of times a day:
- **⌘Space** bring up spotlight search
- **⌘T** bring up a new Tab in your app (e.g. browser, Terminal)
- **⌘C and ⌘V** copy and paste with formatting
- **⌥⌘ShiftV** paste without formatting
- **⌥← or or ⌥→** move text (e.g. terminal commands) by word units rather than character units
- **⌘Q** fully close app
- **⌘L** select the contents of the search bar
- **⌘Tab and ⌘ShiftTab** shuffle through applications (note: file can be dragged onto the icons that appear)
- **⌘\` and ⌘\`Tab** shuffle through Windows of the same application
- **⌘Tab and ⌘ShiftTab** shuffle through Tabs in same window
- **⌘click or middle-click** open link in new browser Tab

## Shortcuts I use 1-10 times a day's of times a day:
- **⌘Shift4 or ⌘Shift5** Screen shot (note: press space after either of them to select a specific window)
- **⌘click Finder title** navigate directories
- **⌘P** print (note: you can easily save to pdf from the menu that appears, or even populate envelope after selecting an individual in Contacts.app)
- **⌘Shift.** unhides and hides hidden system files
- **⌘ShiftT** reopen recently closed browser Tab(s). Reopens one if you quit only one, reopens all if you closed the whole browser
- **⌘F** search within a document or webpage
- **^U** clear Terminal.app line up to the beginning 
- **^W** delete previous word in Terminal.app
- **^U** jump to end of  Terminal.app line
- **^K** erase everything to left of cursor
- **Tab** completion
- **^L** clear page
- **Middle click** to paste selected terminal.app text
- **⌘C** fuzzy search directories to `cd` into, in Terminal.app (requires FZF)
- **^T** fuzzy search files in Terminal.app (requires FZF)
- **⌃R** search command history in Terminal.app (improved with FZF)

CTRL-R Paste the selected command from history onto the command-line
CTRL-T Paste the selected files and directories onto the command-line

- **⌃Z** suspend a process in Terminal.app 
- **double-right click video** Select picture and picture in Safari.app
- **\\[command]** run the non-aliased version (e.g. `\ls`) in Terminal.app
- **⌘↑ and ⌘↓** navigate up/down folder hierarchy
- **⌘Shift A** open Applications folder while in Finder. Browse this folder to see what's available (Disk Utility, and Activity Monitor are particularly useful for power-users)
- **Partial wordF5** see completion options

## Generic Tips:
- You can search an application's menus under `Help`
- When your moving files and you need a "safe" space to drop a file in a directory with many other directories, you can drag the item to the Name/Date Modified/Size/Kind column
- Sometimes form fields, especially password, don't let you paste into them. You can select the text, then click and drag it into the field to prevent having to retype it
- When using Terminal.app, you can drag an item (file/directory) into the terminal to enter its full path
- Click and hold green traffic light in a window to have basic control over its position
- There's hidden options you can uncover with option. For example opening an image >> ⌥Click File gives you "Save As". If you click it and again press ⌥click Format dropdown, you have additional file type options to save assp
- If you use Terminal/ZSH often, you may like to know difference between ZSH configuration files: https://unix.stackexchange.com/questions/71253/what-should-shouldnt-go-in-zshenv-zshrc-zlogin-zprofile-zlogout
- When selecting a large body of work, like text or photos, you don't need to click and drag. For text, for instance, you can click on one part, click where you want to start the copy, go press want to end the selection, press Shift and click the ending
- Select program in terminal click on command in terminal, then tap the man button that appears on the left of the touch bar. The resulting detached man page may then be searched
- [Be careful copying commands from websites and pasting them in terminal](https://briantracy.xyz/writing/copy-paste-shell.html)
