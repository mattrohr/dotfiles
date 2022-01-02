#!/usr/bin/env zsh

# Load the shell dotfiles, and then some:
# * ~/.secret can be used for other settings not committed to GitHub.
for file in ~/.{aliases,functions,prompt,secret}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Avoid issues with `gpg` installed by Homebrew
# https://stackoverflow.com/a/42265848/96656
export GPG_TTY=$(tty);

# Hide the “default interactive shell is now zsh” warning on macOS
export BASH_SILENCE_DEPRECATION_WARNING=1;

###############################################################################
# Editor                                                                      #
###############################################################################

# Set default text editor preference. Most commands use $VISUAL editor if available, otherwise $EDITOR. There are exceptions like `fc`, so we specify both
if command -v nova > /dev/null; then
    export VISUAL='nova'
    export EDITOR=$VISUAL
elif command -v nvim > /dev/null; then
    export VISUAL='nvim'
    export EDITOR=$VISUAL
else
    export VISUAL='vim'
    export EDITOR=$VISUAL
fi

###############################################################################
# Search, History, and ZSH packages                                           #
###############################################################################

# Manage packages with Homebrew
export PATH=/opt/homebrew/bin:$PATH

if [ $(uname -s) = 'Darwin' ]; then

# Setup fzf
if [[ ! "$PATH" == */opt/homebrew/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/opt/homebrew/opt/fzf/bin"
fi
    
# Setup fzf auto-completion
[[ $- == *i* ]] && source "/opt/homebrew/opt/fzf/shell/completion.zsh" 2> /dev/null
    
# Setup fzf key bindings
source "/opt/homebrew/opt/fzf/shell/key-bindings.zsh"
    
# Surround fzf results in a box as a visual anchor
export FZF_DEFAULT_OPTS="--border"
    
# Set `fd` as the default for combined file and directory fuzzy search
export FZF_DEFAULT_COMMAND='fd'

# Set `fd` as the default for `cd`ing into child directory
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND --type d"
    
# Override macOS's ⌥C output (i.e. latin script `ç`) to fzf cd
bindkey "ç" fzf-cd-widget
    
# Setup zsh autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Setup zsh syntax highlighting
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/opt/homebrew/share/zsh-syntax-highlighting/highlighters
    
# Colorize shell commands, arguments, brackets, etc for clarity
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    
elif [ $(uname -s) = 'Linux' ]; then
    echo "Linux operating system not configured for fzf"
    exit 1
else
    echo "Operating system not configured for fzf"
    exit 1
fi

# Don’t clear the screen after quitting a manual page.
export MANPAGER='less -X';

# Colorize man pages
export LESS_TERMCAP_md=$'\e[01;38;5;74m'  # Color default bold headers light blue
export LESS_TERMCAP_me=$'\e[0m'           # End bolding
export LESS_TERMCAP_us=$'\e[04;38;5;146m' # Color default underlined arguments light purple
export LESS_TERMCAP_ue=$'\e[0m'           # End underlining

# Specify saving characteristics for ~/.zsh_history
export HISTFILE=~/.zsh_history            # Set consistent history file path across operating systems
export HISTSIZE=1048576;                  # Set maximum commands saved in memory, default is 500
export SAVEHIST=$HISTSIZE;                # Set maximum commands saved in $HISTFILE
setopt INC_APPEND_HISTORY                 # Add commands as they are typed, not at shell exit
setopt EXTENDED_HISTORY                   # Add start and duration timestamps, in seconds
setopt SHARE_HISTORY                      # Let `history` display commands from other shell sessions
