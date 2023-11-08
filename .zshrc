#####
# oh-my-zsh
#####
export ZSH="/Users/koenig/.oh-my-zsh"
ZSH_THEME="nebirhos"
plugins=(git)
source $ZSH/oh-my-zsh.sh
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/powerline.omp.json)"

#####
# aliases
#####
alias myip="ifconfig | grep 'inet ' | grep -Fv 127.0.0.1 | awk '{print \$2}'"
alias vim="nvim"
alias editvim="cd ~/.config/nvim && vim ."
alias editzsh="vim ~/.zshrc"

#####
# local config (PATH, sourcing files, etc)
#####
export PATH="$PATH:$HOME/apps/flutter/bin"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="/opt/homebrew/opt/mongodb-community@4.4/bin:$PATH"
# export PATH="/Users/koenig/Library/Application Support/JetBrains/Toolbox/scripts:$PATH"
export GEM_HOME=/Users/koenig/.gem
export PATH="$GEM_HOME/bin:$PATH"
export PATH="$PATH:/Users/koenig/Library/Python/3.9/bin"
export PATH="$PATH:/Applications/Alacritty.app/Contents/MacOS"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:/Users/koenig/.mix/escripts"
export PATH="$PATH:/Users/koenig/.config"

source /opt/homebrew/etc/profile.d/z.sh
printf '\eP$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "zsh" }}\x9c'
[ -f "/Users/koenig/.ghcup/env" ] && source "/Users/koenig/.ghcup/env" # ghcup-env

# Uni sw arch course
export CLASSPATH=/Users/koenig/code/uni/a4-group-22/microservices/mysql-connector-j-8.0.33.jar:/Users/koenig/code/uni/a4-group-22/microservices
