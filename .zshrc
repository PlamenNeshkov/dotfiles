export ZSH=/home/plamen/.oh-my-zsh

ZSH_THEME="bira"

plugins=(z)

source $ZSH/oh-my-zsh.sh

export EDITOR="vim"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa.pub"

# general aliases
alias c="cd ~/Code"
alias df="cd ~/dotfiles"
alias rmd="vim ./README.md"
alias jst="tree -I 'node_modules|bower_components'"
alias zrc="vim ~/.zshrc"
alias vrc="vim ~/.vimrc"

# git
alias gaa="git add -A"
alias gp="git push origin master"
alias gl="git pull"
alias gcm="git commit -m"

# npm
alias npmi="npm install"
alias npmg="npm install -g"
alias npms="npm install --save"
alias npmsd="npm install --save-dev"

export NVM_DIR="/home/plamen/.nvm"
nvm() { . "$NVM_DIR/nvm.sh" ; nvm $@ ; } # Lazy load nvm because slow as fuck
