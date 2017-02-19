#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.bash-git-prompt/gitprompt.sh

HISTSIZE=2000
HISTFILESIZE=4000
tac ~/.bash_history | awk '!x[$0]++' | tac | sponge ~/.bash_history

alias ls='ls --color=auto'
