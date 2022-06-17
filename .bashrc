#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PATH=$PATH:$HOME/.local/bin

alias grubmk='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias vgrub='sudo nvim /etc/default/grub'
alias vmkinit='sudo nvim /etc/mkinitcpio.conf'
#export THEOS=~/theos
#alias theos=$THEOS/bin/nic.pl

if [[ "$(tty)" = "/dev/tty1" ]]; then
        pgrep dwm || startx
fi
