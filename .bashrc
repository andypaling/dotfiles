#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -e $HOME/.aliasrc ]; then
    source $HOME/.aliasrc
fi

PS1='[\u@\h \W]\$ '

# Powerline config

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

# ufetch
ufetch | lolcat -p
