#export JAVA_HOME=/usr/lib/jvm/java-8-openjdk

alias ls='ls --color=auto'

autoload -U colors && colors

setopt prompt_subst

autoload -Uz vcs_info

zstyle ':vcs_info:git:*' formats ' (%b)'

precmd() {
	vcs_info
}

PS1='%F{green}%n@%m%f:%F{cyan}%1~%f%F{yellow}${vcs_info_msg_0_} %f%% '

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt autocd
stty stop undef
bindkey -e
#bindkey '^[[Z' reverse-menu-complete

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
#export XDG_STATE_HOME=$HOME/.local/state
#export XDG_DATA_DIRS=/usr/local/share:/usr/share
#export XDG_CONFIG_DIRS=/etc/xdg

export PATH=$PATH:$HOME/.local/bin
#export PATH=$PATH:$HOME/Android/Sdk/build-tools/30.0.3

export BROWSER=firefox
export EDITOR=nvim
export VISUAL=nvim
export PAGER=less

alias grubmk='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias vgrub='sudo nvim /etc/default/grub'
alias vmkinit='sudo nvim /etc/mkinitcpio.conf'
#export THEOS=~/theos
#alias theos=$THEOS/bin/nic.pl

#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep dwm || startx
fi
