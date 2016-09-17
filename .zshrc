export ZSH=/home/plamen/.oh-my-zsh

ZSH_THEME="bira"

plugins=(z git)

source $ZSH/oh-my-zsh.sh

export EDITOR="vim"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa.pub"

# aliases
alias c="cd ~/Code"
alias rmd="vim ./README.md"
alias jst="tree -I 'node_modules|bower_components'"
alias zconf="vi ~/.zshrc"
alias vconf="vi ~/.vimrc"

export NVM_DIR="/home/plamen/.nvm"
nvm() { . "$NVM_DIR/nvm.sh" ; nvm $@ ; } # Lazy load nvm because slow as fuck

sendkey() {
  cat ~/.ssh/id_rsa.pub | ssh $1 "mkdir -p ~/.ssh && cat >>  ~/.ssh/authorized_keys"
}
