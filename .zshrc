autoload -U colors && colors

PROMPT="%n@%m %1~ %# "
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

export EDITOR=vim

zstyle :compinstall filename '/home/nishant/.zshrc'
zstyle ':completion:*' menu select
autoload -Uz compinit
compinit

bindkey -e
