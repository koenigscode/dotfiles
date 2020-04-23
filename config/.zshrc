export ZSH="/home/michael/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git cp web-search z docker)

source $ZSH/oh-my-zsh.sh

# lazy load nvm
nvm() {
    unset -f nvm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" 
    nvm "$@"
}
 
node() {
    unset -f node
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
    node "$@"
}
 
npm() {
    unset -f npm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
    npm "$@"
}

# (cat ~/.cache/wal/sequences &)

alias wincon="windscribe connect"
alias windis="windscribe disconnect"
alias winstat="windscribe status"
alias mntnas="sudo ~/mount_nas.sh"
alias cdvid="cd /mnt/nas/videos/"
