############ SETUP ############
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
    git
    zsh-autosuggestions
)
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"                           # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion" # This loads nvm bash_completion
############ ALIAS LAND ############
############ GIT ############
alias gst='git status'
alias glog='git log --oneline'
alias grb='git rebase -i'

############ DOCKER ############
alias dprune='docker container prune'
alias dstop='docker stop $(docker ps -a -q)'
alias dtidy='docker system prune'
alias dbu='docker-compose build'
alias dup='docker-compose up'
alias clean='docker ps --filter 'status=Exited' -a | xargs docker stop docker images --filter "dangling=true" -q | xargs docker rmi'
# ############ NODE ############
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

###### AWS #######

source $ZSH/oh-my-zsh.sh
