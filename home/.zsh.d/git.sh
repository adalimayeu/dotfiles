# Git aliases.
alias g='git'
alias gc='git commit'
alias gcam='git commit -am'
alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias gp='git push'
alias gs='git status'
alias gst='git status'
alias gp='git push origin'
alias gpo='git push origin'

# Clones git repository and enters it
function gcl() {
    git clone $1 && cd $(basename "$1" .git)
}

# Initializes git repository and creates initial commit
function ginit() {
    git init && git commit -m "Initial commit" --allow-empty
}
