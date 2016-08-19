export ZSH=/home/plamen/.oh-my-zsh

ZSH_THEME="agnoster"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"
plugins=(z sudo git debian thefuck npm jsontools web-search cabal)

# User configuration

export PATH=~/.cabal/bin/:$PATH
# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

export EDITOR="vim"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa.pub"

# aliases
alias c="cd ~/Code"
alias rmd="vi ./README.md"
alias zconf="vi ~/.zshrc"
alias vconf="vi ~/.vimrc"
alias ohmyzsh="vi ~/.oh-my-zsh"

export NVM_DIR="/home/plamen/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

sendkey() {
  cat ~/.ssh/id_rsa.pub | ssh $1 "mkdir -p ~/.ssh && cat >>  ~/.ssh/authorized_keys"
}
