# Bash Profile - very basic

if  [ -f ~/.bashrc ]; then
  . ~/.bashrc

export PATH=$PATH:$HOME/bin:$HOME/.hosts

export PS1='[\u@\h \W]\$ '

set -o vi

alias ssh='ssh -q'


# PYTHON Settings
#export PATH=$PATH:/c/Users/versi/AppData/Local/Programs/Python/Python36/Scripts/
export PATH=/usr/local/bin/python36:$PATH
alias python='/usr/local/bin/python3'
alias pip='/usr/local/bin/pip3'
#PYTHON


# DOCKER Settings
#export PATH=$PATH:/usr/local/bin/docker
alias dc='docker-compose'
alias dcl='docker-compose logs'
alias dcu='docker-compose up'
alias dcd='docker-compose down'
alias dcud='docker-compose down; docker-compose up'
alias dcew='docker-compose exec web'

# TERRAFORM Settings
#export PATH=$PATH:/c/Users/versi/AppData/Roaming/Terraform
#export AWS_ACCESS_KEY_ID=##################
#export AWS_SECRET_ACCESS_KEY=##################################
alias tf=/usr/local/bin/terraform
