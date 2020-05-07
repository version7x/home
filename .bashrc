# Bash Profile - very basic

if  [ -f ~/.bashrc ]; then
  . ~/.bashrc

PATH=$PATH:$HOME/bin:$HOME/.hosts

export PATH

set -o vi

alias ssh='ssh -q'
