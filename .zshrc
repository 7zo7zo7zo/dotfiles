alias ls='ls --color=auto'

autoload -U colors && colors
PS1="%{$fg[green]%}%n@%m%{$reset_color%}:%{$fg[cyan]%}%1~%{$reset_color%} %% "

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt autocd
stty stop undef
#add bindkey here

#add completion here

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

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [[ "$(tty)" = "/dev/tty1" ]]; then
        pgrep dwm || startx
fi
