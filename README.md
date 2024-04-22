# dotfiles

## Install

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install stow starship
git clone https://github.com/adalimayeu/dotfiles ~/.dotfiles_source
cd ~/.dotfiles_source
stow . -t ~
```
