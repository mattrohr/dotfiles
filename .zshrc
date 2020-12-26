# Load the shell dotfiles, and then some:
# * ~/.extra can be used for other settings not committed to GitHub.
for file in ~/.{prompt,aliases,functions,extra,exports}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Initialize fasd for navigating directories
eval "$(fasd --init auto)"

###############################################################################
# Packages                                                                #
###############################################################################

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# example usage: 'ls -f' describes available flags, and interactively cycles through them with subsequent tabs
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
## Option-C is FZF default binding for changing directory, but is overridden by macOS to output Latin script. Override the override by binding Latin script to change directory
bindkey "ç" fzf-cd-widget
# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f'
# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"