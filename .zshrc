[ -f "$HOME/.oh-my-zsh/oh-my-zsh.sh" ] && source "$HOME/.oh-my-zsh/oh-my-zsh.sh"

for file in ~/.zsh.d/*sh; do
  [ -f $file ] && source $file
done

eval "$(starship init zsh)"
