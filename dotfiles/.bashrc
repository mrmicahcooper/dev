if [ -f '/usr/local/etc/bash_completion.d/git-completion.bash' ]; then
  source '/usr/local/etc/bash_completion.d/git-completion.bash'
fi

source ~/.git-prompt.sh
# export PS1='\[\033[01;36m\]\W\[\033[01;32m\]$(__git_ps1 "[%s]")\[\033[01;36m\]• '
export PS1="\[\033[01;36m\]\W\[\033[95m\]\$(__git_ps1 '[%s]')\[\033[01;94m\]⇉ \[\033[01;00m\]"

# eval "$(hub alias -s)"

export CLICOLOR=1
export EDITOR="$VISUAL"
export ERL_AFLAGS="-kernel shell_history enabled"
export HISTCONTROL=erasedups
export HISTIGNORE="%*"
export HISTSIZE=10000
export LESS="FRX"
export LSCOLORS=gxgxcxdxbxegedabagacad
export PSQL_EDITOR='vim -c"setf sql"'
export RI="--format ansi -T"
export VISUAL=vim

shopt -s histappend

alias gap='git add -p'
alias gb='git branch'
alias gc='git commit -v'
alias gc='git commit -v'
alias gca='git commit -a -v'
alias gca='git commit -a -v'
alias gcl='git clean -f -d'
alias gco='git checkout'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdh='git diff HEAD'
alias glg='git log --graph --oneline --decorate --color --all'
alias glod='git log --oneline --decorate'
alias glod='git log --oneline --decorate'
alias glp='git log -p'
alias gnap='git add -N --ignore-removal . && gap && gref'
alias gp='git push'
alias gpr='git pull --rebase'
alias gr='git rebase'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gst='git status'
alias ll='ls -l'
alias neorestart='~/neo4j-community-3.2.2/bin/neo4j restart'
alias neostart='~/neo4j-community-3.2.2/bin/neo4j start'
alias neostop='~/neo4j-community-3.2.2/bin/neo4j stop'
alias pgstart='sudo /etc/init.d/postgresql start'
alias pgstop='sudo /etc/init.d/postgresql stop'
alias redisstart='sudo /etc/init.d/redis_6379 start'
alias redisstop='sudo /etc/init.d/redis_6379 stop'
alias reset-authors='git commit --amend --reset-author -C HEAD'
alias vi='vim'
alias longtest="./node_modules/.bin/lab --lint"
alias longtest="./node_modules/.bin/lab --lint"



function grm () {
  echo "git rebase master"
  command git rebase master
}

function gwip () {
  echo "git commit -a -m wip"
  command git commit -a -m wip
}

function gush () {
  echo "git push origin $(git rev-parse --abbrev-ref HEAD) --force-with-lease"
  git push origin $(git rev-parse --abbrev-ref HEAD) --force-with-lease
}

gri() {
  echo "git rebase -i HEAD~$1"
  command git rebase -i HEAD~$1
}

function gmpr () {
  echo "git checkout master && git pull --rebase origin master"
  git checkout master && git pull --rebase origin master
}

flint() {
  echo "./node_modules/.bin/eslint --fix $1"
  command ./node_modules/.bin/eslint --fix $1
}

tember() {
  echo "ember test --server --filter=\"$1\""
  command ember test --server --filter="$1"
}


function grm () {
  echo "git rebase master"
  command git rebase master
}

function gwip () {
  echo "git commit -a -m wip"
  command git commit -a -m wip
}

function gush () {
  echo "git push origin $(git rev-parse --abbrev-ref HEAD) --force-with-lease"
  git push origin $(git rev-parse --abbrev-ref HEAD) --force-with-lease
}

gri() {
  echo "git rebase -i HEAD~$1"
  command git rebase -i HEAD~$1
}

function gmpr () {
  echo "git checkout master && git pull --rebase origin master"
  git checkout master && git pull --rebase origin master
}

flint() {
  echo "./node_modules/.bin/eslint --fix $1"
  command ./node_modules/.bin/eslint --fix $1
}

tember() {
  echo "ember test --server --filter=\"$1\""
  command ember test --server --filter="$1"
}

source ~/.profile

[ ! -f "$HOME/.bashrc.local" ] || . "$HOME/.bashrc.local"

if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then source "$HOME/.rvm/scripts/rvm" ; fi
