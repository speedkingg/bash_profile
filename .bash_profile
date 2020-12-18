
# コンソールの色と表示項目設定
black="\[$(tput setaf 0)\]"
red="\[$(tput setaf 1)\]"
green="\[$(tput setaf 2)\]"
yellow="\[$(tput setaf 3)\]"
blue="\[$(tput setaf 4)\]"
magenta="\[$(tput setaf 5)\]"
cyan="\[$(tput setaf 6)\]"
white="\[$(tput setaf 7)\]"
bold="\[$(tput bold)\]"
clear="\[$(tput sgr0)\]"

# Git branch
git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)\ /';
}

# Custom bash prompt"
export PS1="${cyan}\u${cyan}@\h:${white}${bold}\W${clear}${cyan}\$(git_branch)${clear}$ "
# =======================================================

#====== エイリアス =========================================
# lsのエイリアス
export CLICOLOR=1
alias ll='ls -alF'

# findのエイリアス（mac専用）
alias find='mdfind'

# Dockerのエイリアス
alias docker-remove-all='docker rm $(docker ps -aq)'
alias docker-stop-all='docker stop $(docker ps -aq)'
alias docker-start-all='docker start $(docker ps -aq)'

# grepのエイリアス
alias grep='grep --color=auto'

# netstatのエイリアス
alias netstat='lsof -nP -iTCP -sTCP:LISTEN'

# goのエイリアス
alias go-build='go build'
alias go-install='go install'
alias go-run='go run'

# python simple server
alias pyserver='python -m SimpleHTTPServer $1'

# ====== PATH =========================================

