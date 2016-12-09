#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\e[0;34m\]\u\[\e[m\]:\[\e[1;34m\]\w\[\e[m\]$(__git_ps1 "\[\e[3;36m\](%s)")\[\e[0;0m\]\$ '
PS2='> '
PS3='> '
PS5='+ '

HISTSIZE=1000
HISTFILESIZE=2000
tac ~/.bash_history | awk '!x[$0]++' | tac | sponge ~/.bash_history

alias ls='ls --color=auto'
