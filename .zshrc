# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="oxide"
source $ZSH/oh-my-zsh.sh

# dircolors for oxide theme
if [ -x "$(command -v dircolors)" ]; then
    eval "$(dircolors -b ~/.dircolors)"
fi

# Command execution timestamp shown in the history command output.
HIST_STAMPS="%d/%m/%y %T"

# Include alias file (if present) containing aliases for ssh, etc.
[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.aliases_private ] && source ~/.aliases_private

# Include functions file (if present) containing user fucntions
[ -f ~/.functions ] && source ~/.functions
[ -f ~/.functions_private ] && source ~/.functions_private

# Include file (if present) with exports
[ -f ~/.exports ] && source ~/.exports
[ -f ~/.exports_private ] && source ~/.exports_private
