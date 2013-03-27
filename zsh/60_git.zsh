#!/bin/bash

# make hub an alias for git
eval "$(hub alias -s)"

# create shell aliases for most used git commands
alias st='git st'
alias ci='git ci'
alias lg='git log'
alias co='git co'
alias br='git branch'
alias dc='git diff --cached'

alias add='git add --all'
alias log='git log'
alias push='git push'
alias pull='git pull'
alias stash='git stash'
alias clone='git clone'
alias fetch='git fetch'
alias merge='git merge'
alias branch='git branch'
alias rebase='git rebase'

alias up="git up"
