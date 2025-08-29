#####
# oh-my-zsh
#####
export ZSH="/Users/koenig/.oh-my-zsh"
ZSH_THEME="nebirhos"
plugins=(git zsh-fzf-history-search zsh-autosuggestions you-should-use zsh-bat)
bindkey '^ ' autosuggest-accept # ctrl space for autosuggest accept
source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# disable homebrew auto updates
export HOMEBREW_NO_AUTO_UPDATE=1

# create tmux session if there are none 
if [[ ! $(tmux list-sessions) ]]; then 
  tmux
fi

#####
# aliases
#####
alias myip="ifconfig | grep 'inet ' | grep -Fv 127.0.0.1 | awk '{print \$2}'"
alias vim="nvim"
alias editvim="cd ~/.config/nvim && vim ."
alias editzsh="vim ~/.zshrc && source ~/.zshrc"
alias edittmux="vim ~/.tmux.conf && tmux source-file ~/.tmux.conf"
alias lg='lazygit'
alias python='python3'
alias love="/Applications/love.app/Contents/MacOS/love"
alias simpleprompt="export PS1=\"$ \""
alias cchat='make && erl -eval "cchat:server(), cchat:client(), cchat:client()."'
alias copy="tee >(pbcopy) 2>&1"  # stdout + stderr

gcc-run() {
  local filename="${1%.c}"
  gcc "$1" -o "$filename.out" && ./"$filename.out" "${@:2}"
}

transcribe() {
    local file="$1"
    whisper-ctranslate2 --model large-v3 --output_format srt --vad_filter True --output_dir . --word_timestamps True --max_line_width 40 --max_line_count 1 "$file"
}

transcribe-fast() {
    local file="$1"
    whisper-ctranslate2 --model medium --output_format srt --vad_filter True --output_dir . --word_timestamps True --max_line_width 40 --max_line_count 1 "$file"
}

translate() {
    local file="$1"
    whisper-ctranslate2 --model large-v3 --task translate --output_format srt --vad_filter True --output_dir . --word_timestamps True --max_line_width 40 --max_line_count 1 "$file"
}

tiled() {
  local session window
  session=$(tmux display-message -p '#S')
  window=$(tmux display-message -p '#I')

  # Split original pane horizontally (top and bottom)
  tmux split-window -v -t ${session}:${window}.1

  # Split top pane vertically (left and right)
  tmux split-window -h -t ${session}:${window}.1

  # Split bottom pane vertically (left and right)
  tmux split-window -h -t ${session}:${window}.3

  # Select top-left pane
  tmux select-pane -t ${session}:${window}.1
  clear
}

alias seai="source $HOME/.virtualenvs/SEAI/bin/activate && cd $HOME/code/uni/SEAI && jupyter notebook"


#####
# local config (PATH, sourcing files, etc)
#####
export PATH="$PATH:$HOME/apps/flutter/bin"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="/opt/homebrew/opt/mongodb-community@4.4/bin:$PATH"
export PATH="$GEM_HOME/bin:$PATH"
export PATH="$PATH:/Users/koenig/Library/Python/3.9/bin"
export PATH="$PATH:/Applications/Alacritty.app/Contents/MacOS"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:/Users/koenig/.mix/escripts"
export PATH="$PATH:/Users/koenig/.config"
export PATH=$PATH:$(go env GOPATH)/bin
export PATH="$PATH:/Users/koenig/NuSMV-2.6.0-Darwin/bin"
export PATH=/Users/koenig/Library/Python/3.12/bin:$PATH
export PATH="$PATH:/opt/homebrew/anaconda3/bin"

export GEM_HOME=/Users/koenig/.gem
printf '\eP$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "zsh" }}\x9c'
[ -f "/Users/koenig/.ghcup/env" ] && source "/Users/koenig/.ghcup/env" # ghcup-env


eval $(thefuck --alias)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# dont activate base env by default 
conda config --set auto_activate_base false

# Added by Windsurf
export PATH="/Users/koenig/.codeium/windsurf/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/koenig/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
# alias npm="pnpm"
export PATH="/Users/koenig/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/Users/koenig/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"


# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/koenig/Library/Application Support/Herd/config/php/84/"


# Herd injected PHP binary.
export PATH="/Users/koenig/Library/Application Support/Herd/bin/":$PATH


# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/koenig/Library/Application Support/Herd/config/php/83/"

export PATH="$HOME/.composer/vendor/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/koenig/.lmstudio/bin"
# End of LM Studio CLI section

export PATH="$PATH:/Users/koenig/dotfiles/scripts"
