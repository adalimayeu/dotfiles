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

# Command execution timestamp shown in the history command output.
HIST_STAMPS="%d/%m/%y %T"

for file in ~/.zsh.d/*sh; do
  [ -f $file ] && source $file
done

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
