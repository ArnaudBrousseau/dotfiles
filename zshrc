[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

# Path to oh-my-zsh install
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"

HYPHEN_INSENSITIVE="true"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git)
source $ZSH/oh-my-zsh.sh

bindkey -v

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

export KEYTIMEOUT=1
unsetopt correct_all
