export ZSH="/home/michael/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git cp web-search z docker)

source $ZSH/oh-my-zsh.sh

export DENO_INSTALL="/home/michael/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

export ANDROID_HOME=/home/michael/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platforms-tools

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64


# lazy load nvm
 
# node() {
#     unset -f node
#     export NVM_DIR=~/.nvm
#     [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
#     node "$@"
# }
 
# npm() {
#     unset -f npm
#     export NVM_DIR=~/.nvm
#     [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
#     npm "$@"
# }

# yarn() {
#     unset -f yarn
#     export NVM_DIR=~/.nvm
#     [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
#     yarn "$@"
# }

# vercel() {
#     unset -f vercel
#     export NVM_DIR=~/.nvm
#     [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
#     vercel "$@"
# }

# (cat ~/.cache/wal/sequences &)
# export NVM_DIR=~/.nvm
# source $NVM_DIR/nvm.sh

# includes n
export PATH=/home/michael/.npm-global/bin:$PATH

alias zshrc="vim ~/.zshrc"
alias wincon="windscribe connect"
alias winconrad="windscribe connect radiohall"
alias windis="windscribe disconnect"
alias winstat="windscribe status"
alias mntnas="sudo ~/mount_nas.sh"
alias cdvid="cd /mnt/nas/videos/"
alias gac="git add . && git commit -m 'Add content'; git push"
alias kill_node_modules='find . -name "node_modules" -type d -prune | xargs du -chs'
alias open="xdg-open"
alias notes="cd ~/notes && git pull; code . --wait; gac"
alias no="notes"
alias sano="cd ~/notes && gac"
alias exi="exit" # been using too much cisco ios

function findip() {
  nmap -sn 10.0.0.0/24 | grep -i $1 | awk -F "[()]" "{print $2}"
}

function droidcamip() {
	droidcam-cli $1 4747 -size=1920x1080
}

function droidcamadb() {
	droidcam-cli adb 4747 -size=1920x1080
}

export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export SPICETIFY_INSTALL="/home/michael/spicetify-cli"
export PATH="$SPICETIFY_INSTALL:$PATH"

