if [ -f '/usr/local/etc/bash_completion.d/git-completion.bash' ]; then
  source '/usr/local/etc/bash_completion.d/git-completion.bash'
fi

source ~/.git-prompt.sh
export PS1='\[\033[01;36m\]\W\[\033[01;32m\]$(__git_ps1 "[%s]")\[\033[01;36m\]⚙ '

export VISUAL=vim
export EDITOR="$VISUAL"
export LESS="FRX"
export RI="--format ansi -T"
export PSQL_EDITOR='vim -c"setf sql"'
export CLICOLOR=1
export LSCOLORS=gxgxcxdxbxegedabagacad

export HISTIGNORE="%*"
export HISTSIZE=10000
export HISTCONTROL=erasedups

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

if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then source "$HOME/.rvm/scripts/rvm" ; fi

[ ! -f "$HOME/.bashrc.local" ] || . "$HOME/.bashrc.local"
