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

# Initialize fasd for navigating directories
eval "$(fasd --init auto)"

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
# ZSH Packages                                                                #
###############################################################################

# Populate remaining shell command from history
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Colorize shell commands, arguments, brackets, etc for clarity
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Populate available shell commands and flags on <tab>
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
fi

###############################################################################
# Search and History                                                          #
###############################################################################

# Enable fzf including auto-completions
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
    export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
fi
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null

# Enable fzf key bindings
source "/usr/local/opt/fzf/shell/key-bindings.zsh"

# Surround fzf results in a box as a visual anchor
export FZF_DEFAULT_OPTS="--border"

# Set `fd` as the default for combined file and directory fuzzy search
export FZF_DEFAULT_COMMAND='fd'

# Override macOS's ⌥C output (i.e. latin script `ç`) to fzf cd
bindkey "ç" fzf-cd-widget

# Set `fd` as the default for `cd`ing directory into child directory
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND --type d"

export MANPAGER='less -X';                # Don’t clear the screen after quitting a manual page.

# Colorize man pages
export LESS_TERMCAP_md=$'\e[01;38;5;74m'  # color default bold headers light blue
export LESS_TERMCAP_me=$'\e[0m'           # end bolding
export LESS_TERMCAP_us=$'\e[04;38;5;146m' # color default underlined arguments light purple
export LESS_TERMCAP_ue=$'\e[0m'           # end underlining

# Specify saving characteristics for ~/.zsh_history
export HISTSIZE=1048576;                  # set maximum commands saved in memory, default is 500
export SAVEHIST=$HISTSIZE;                # set maximum commands saved in $HISTFILE
setopt INC_APPEND_HISTORY                 # add commands as they are typed, not at shell exit
setopt EXTENDED_HISTORY                   # add start and duration timestamps, in seconds
setopt SHARE_HISTORY                      # let `history` display commands from other shell sessions
