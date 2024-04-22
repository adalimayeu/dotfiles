# Enable syntax highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[assign]="fg=yellow"
ZSH_HIGHLIGHT_STYLES[commandseparator]="fg=red"
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]="fg=green,bold"
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]="fg=green"
ZSH_HIGHLIGHT_STYLES[globbing]="fg=magenta"
ZSH_HIGHLIGHT_STYLES[global-alias]="fg=yellow,bold"
ZSH_HIGHLIGHT_STYLES[history-expansion]="fg=magenta"
ZSH_HIGHLIGHT_STYLES[redirection]="fg=red"
ZSH_HIGHLIGHT_STYLES[path]="fg=white,underline"
ZSH_HIGHLIGHT_STYLES[path_pathseparator]="fg=white,bold,underline"

# zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Command execution timestamp shown in the history command output.
HIST_STAMPS="%d/%m/%y %T"
