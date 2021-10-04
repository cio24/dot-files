########################
##### My Functions ##### 

# Open url
function addSufAndPrefUrl() {
	url=https://$1
	echo $url
	xdg-open $url
}

function createLink(){
	ln -s $1 htdocs
}

function addHostDns(){
	 echo 127.0.0.1	$1 >> /etc/hosts
}

function addAlias(){
	#echo alias \'$1=\"$2\"\' >> ~/.zshrc
	alias=$(echo alias $1=\"$2\")
	echo $alias >> ~/.zsh_aliases
}


######################
##### My Aliases ##### 

# Git

alias ga="git add"
alias gaa="git add ."
alias gc="git commit -m"
alias gac="git commit -am"
alias gca="git commit --amend"
alias gcan="git commit --amend --no-edit"
alias gfc="git commit -m 'First Commit'"
alias gcl="git clone"
alias gs="git status"
alias gl="git log"
alias glo="git log --oneline --graph"
alias gcob="git checkout -b"
alias gco="git checkout"
alias grh="git reset --hard"
alias gd="git diff"
alias gps="git push"
alias gpsu="git push -u"
alias gpl="git pull"
alias gb="git branch"
alias gbd="git branch -d"
alias gbD="git branch -D"
alias gba="git branch -a"
alias gbv="git branch -vv"
alias gr="git remote"
alias grv="git remote -vv"
alias gra="git remote add"
alias gi="git init"
alias grf="git reflog"
alias grh="git reset --hard"
alias gm="git merge"
alias gst="git stash"
alias gsp="git stash pop"
alias gf="git fetch"
alias gbdr="git push origin --delete"
alias grm="git reset --merge"
alias grp="git remote prune origin"

# Docker Images
alias db="docker build"
alias dbt="docker build -t"
alias drp="docker run -p"
alias dcb="docker-compose build"

# containers
alias dps="docker ps"
alias dpsa="docker ps -a"
alias ds="docker stop"
alias drm="docker rm"
alias ds="docker stop"
alias di="docker images"
alias dir="docker image rm"
alias dirf="docker image rm -f"
alias dr="docker run"
alias drP="docker run -P"

# Docker Compose
alias dcu="docker-compose up"
alias dcud="dcu -d"
alias dcudd="dcud php mysql httpd"
alias dcd="docker-compose down"
alias dcs="docker-compose stop"
alias dci="docker-compose images"
alias dcps="docker-compose ps"
alias dcpsa="docker-compose ps -a"

#General aliases
alias dif="ls -ld ." # shows the permissions, user owner and group.
#alias code="code . && exit" # opens visual studio code in current directory and closes terminal
alias nau="nautilus . && exit" # opens the current folder in the explorer and closes the terminal
alias cd2="cd ..//.."
alias cd3="cd ..//..//.."
alias cd4="cd ..//..//..//.."
alias xdg='addSufAndPrefUrl'
alias aliases="code ~/.zsh_aliases"
alias htd="createLink"
alias dns="addHostDns"
alias shell="cd ~/devilbox && dcudd && bash shell.sh"
alias f5="source ~/.zshrc"
alias cdd="cd ~/devilbox/data/www"
alias siz="du -sh"
alias wor="wormhole receive"
alias cop="xclip -sel clip"
#alias exi="&& exit"
alias cls="clear"
alias ex="exit"
alias eda="code /home/qwavee/devilbox/bash/aliases.sh"
alias cod="code . && exit"
alias dev="kuspit"
alias react="react"

#npm
alias ni="npm i"
alias nun="npm update"
alias nup="npm uninstall"
alias nrd="npm run dev"



function react(){
	cd ~/me/mern-app/frontend/careers-path
	code .
	npm start
}


function express(){
	cd ~/me/mern-app/backend/express-api
	code .
	npm run dev
}

# function addAlias(){
# 	#echo alias \'$1=\"$2\"\' >> ~/.zshrc
# 	alias=$(echo alias $1=\"$2\")
# 	echo $alias >> ~/.zsh_aliases
# }

# alias ali="addAlias"
