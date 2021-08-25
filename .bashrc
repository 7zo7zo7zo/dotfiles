#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export TERM=st-256color

export PATH=$PATH:$HOME/scripts

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep dwm || startx
fi
