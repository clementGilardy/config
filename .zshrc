#!/usr/bin/env zsh
#   _________  _   _ ____   ____ 
#  |__  / ___|| | | |  _ \ / ___|
#    / /\___ \| |_| | |_) | |    
# _ / /_ ___) |  _  |  _ <| |___ 
#(_)____|____/|_| |_|_| \_\\____|
#

ZSH=/usr/share/oh-my-zsh/

# Complétion 
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                             /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

# Crée un cache des complétion possibles
# très utile pour les complétion qui demandent beaucoup de temps
# comme la recherche d'un paquet aptitude install moz<tab>
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh_cache
# des couleurs pour la complétion
# faites un kill -9 <tab><tab> pour voir :)
zmodload zsh/complist
setopt EXTENDED_GLOB 
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=36=31"
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s 
zstyle ':completion:*' menu select=2
# Correction des commandes
setopt correctall
 

autoload -U compinit && compinit 
#promptinit
#prompt adam2
alias vi='vim'
 
# Les alias marchent comme sous bash
alias ls='ls -h --color=auto'
alias ll='ls --color=auto -lah'
alias lll='ls --color=auto -lh | less'
# marre de se faire corriger par zsh ;)
alias xs='cd'
alias sl='ls'
alias tree='tree -C'
alias du='du -h'
# mplayer en plein framme buffer ;)
alias mplayerfb='mplayer -vo fbdev -vf scale=1024:768'
# Un grep avec des couleurs :
export GREP_COLOR=31
alias grep='grep --color=auto'
alias xte='nohup xterm &' # xte lancera un xterm qui ne se fermera pas si on ferme le terminal
#alias pour yaourt
alias update='yaourt -Syua'
alias tmux="TERM=screen-256color-bce tmux"
alias transmission="transmission-qt"
alias sailfish="~/Documents/SailfishOS/bin/qtcreator"
alias rm='rm -rf'

# Pareil pour les variables d'environement :
#export http_proxy="http://hostname:8080/"
#export HTTP_PROXY=$http_proxy
# un VRAI éditeur de texte ;)
export EDITOR=/usr/bin/vim

plugins=(git vi-mode history-substring-search colorize colored-man django pip)
fpath=(/etc/zsh-completions/src $fpath)


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
PATH=$PATH:/home/eternel/.gem/ruby/2.2.0/bin
export PATH


source $ZSH/oh-my-zsh.sh
#zsh history search
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
zmodload zsh/terminfo
bindkey "[A" history-substring-search-up
bindkey "[B" history-substring-search-down


#case insensitive
zstyle ':completion:*:cscomplete:*' group-name case-sensitive
zstyle ':completion:*:complete:*' group-name case-insensitive
zstyle ':completion:*' group-order case-sensitive case-insensitive
zstyle ':completion:*:cscomplete:*:*' matcher-list ''
zstyle ':completion:*:complete:*' matcher-list 'm:{a-z}={A-Z}'

export CDPATH="$HOME:/srv/http/"

if [[ -r /usr/lib/python3.4/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    source /usr/lib/python3.4/site-packages/powerline/bindings/zsh/powerline.zsh
fi
#color syntax when we make an error
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_THEME="powerline"

export TERM='xterm-256color'
#zshenv
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

typeset -U path cdpath fpath
if [[ ! $TERM =~ linux ]]
then
   if [ -z $TMUX ]
   then
       exec tmux
   fi
fi
