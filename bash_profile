PATH=/opt/current_ruby/bin:/usr/bin/:/opt/local/bin:$PATH
GEM=/opt/ruby-enterprise-1.8.7-2009.10/lib/ruby/gems/1.8/gems/
VIRA=~/work/maha_mandala

set -o vi

alias ..='cd ..'
alias ...='cd ../..'
alias s='git status'
alias gd='git diff'
alias co='git commit'
alias gco='git checkout'
alias a='git add'
alias v='cd $VIRA'
alias cc='rails console'
alias ss='rails server'

cd $VIRA
