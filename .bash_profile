# Bash Profile - very basic

if  [ -f ~/.bashrc ]; then
  . ~/.bashrc

PATH=$PATH:$HOME/bin:$HOME/.hosts

export PATH

set -o vi

alias ssh='ssh -q'


# PYTHON Settings
alias python='/usr/local/bin/python3'
alias pip='/usr/local/bin/pip3'


# DOCKER Settings
alias dc='docker-compose'
alias dcl='docker-compose logs'
alias dcu='docker-compose up'
alias dcd='docker-compose down'
alias dcud='docker-compose down; docker-compose up'
alias dcew='docker-compose exec web'


