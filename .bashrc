#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

shopt -s autocd
stty stop undef
set -o emacs

export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
#export $XDG_STATE_HOME=$HOME/.local/state
#export XDG_DATA_DIRS=/usr/local/share:/usr/share
#export XDG_CONFIG_DIRS=/etc/xdg

export PATH=$PATH:$HOME/.local/bin

export BROWSER=firefox
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less

alias grubmk='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias vgrub='sudo nvim /etc/default/grub'
alias vmkinit='sudo nvim /etc/mkinitcpio.conf'
#export THEOS=~/theos
#alias theos=$THEOS/bin/nic.pl

if [[ "$(tty)" = "/dev/tty1" ]]; then
        pgrep dwm || startx
fi
