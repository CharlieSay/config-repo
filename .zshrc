# Set up PATH and environment variables
export ZSH="$HOME/.oh-my-zsh"
export PYENV_ROOT="$HOME/.pyenv"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
export PATH="$HOME/.local/bin:$PATH"

# Add Yarn global bin to PATH (useful for React/TS development)
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# AWS CLI autocomplete
complete -C '/usr/local/bin/aws_completer' aws

# Kill Zscaler
kill-zscaler() {
    find /Library/LaunchAgents -name '*zscaler*' -exec launchctl unload {} \;
    sudo find /Library/LaunchDaemons -name '*zscaler*' -exec launchctl unload {} \;
}

# Start Zscaler
start-zscaler() {
    open -a /Applications/Zscaler/Zscaler.app --hide
    sudo find /Library/LaunchDaemons -name '*zscaler*' -exec launchctl load {} \;
}

# Set up Oh My Zsh
ZSH_THEME="robbyrussell"
plugins=(
    git
    zsh-autosuggestions
    npm
    nvm
    aws
    docker
    react-native
)
source $ZSH/oh-my-zsh.sh

# Shopify Hydrogen alias to local projects
alias h2='$(npm prefix -s)/node_modules/.bin/shopify hydrogen'

# Useful aliases for React/TS/AWS development
alias ni="npm install"
alias nid="npm install --save-dev"
alias nrs="npm run start"
alias nrb="npm run build"
alias nrt="npm run test"
alias nrl="npm run lint"

# Git aliases
alias gs='git status'
alias gaa='git add .'
alias gcm='git commit -m'
alias gp='git push'
alias gpl='git pull'
alias gco='git checkout'
alias gb='git branch'

# AWS aliases
alias awsprofile='export AWS_PROFILE=$(aws configure list-profiles | fzf)'
alias awslist='aws configure list-profiles'

# Docker aliases
alias dcu='docker-compose up'
alias dcd='docker-compose down'
alias dcb='docker-compose build'

# Function to create a new React TypeScript project
create-react-ts-app() {
    npx create-react-app $1 --template typescript
}

# Function to create a new Next.js TypeScript project
create-next-ts-app() {
    npx create-next-app $1 --typescript
}

# Function to switch Node.js versions using NVM
use-node() {
    nvm use $1
}

# Load custom scripts
[ -f ~/.custom_scripts.sh ] && source ~/.custom_scripts.sh

# Load environment variables from .env file
[ -f ~/.env ] && source ~/.env


# EXISTING ZSH BELOW

# # Set up PATH and environment variables
# export ZSH="$HOME/.oh-my-zsh"
# export PYENV_ROOT="$HOME/.pyenv"
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
# export PATH="$HOME/.local/bin:$PATH"

# # Kill Zscaler
# kill-zscaler() {
#     find /Library/LaunchAgents -name '*zscaler*' -exec launchctl unload {} \;
#     sudo find /Library/LaunchDaemons -name '*zscaler*' -exec launchctl unload {} \;
# }

# # Start Zscaler
# start-zscaler() {
#     open -a /Applications/Zscaler/Zscaler.app --hide
#     sudo find /Library/LaunchDaemons -name '*zscaler*' -exec launchctl load {} \;
# }

# # Set up Oh My Zsh
# ZSH_THEME="robbyrussell"
# plugins=(
#     git
#     zsh-autosuggestions
# )
# source $ZSH/oh-my-zsh.sh

# # Shopify Hydrogen alias to local projects
# alias h2='$(npm prefix -s)/node_modules/.bin/shopify hydrogen'
