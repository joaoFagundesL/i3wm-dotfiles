#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
xset r rate 200 60
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
