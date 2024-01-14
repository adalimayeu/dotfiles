# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme
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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
