export PATH=$HOME/bin:/usr/local/bin:$PATH

# Load colors
autoload -U colors && colors

# Path to your oh-my-zsh installation.
export ZSH="/home/ap/.oh-my-zsh"

ZSH_THEME="gozilla"

HISTSIZE=25000
SAVEHIST=25000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
  django
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
export EDITOR=vim

# auto suggestions config
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#9da9db"
bindkey '^ ' autosuggest-accept

# Clear all zsh aliases
unalias -m '*'

# Add my alias script
if [ -e $HOME/.aliasrc ]; then
    source $HOME/.aliasrc
fi

ufetch
