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

#DEBUG
export PANEL_FIFO=/tmp/panel-fifo
export PATH=$PATH:$HOME/.config/bspwm/panel
export PANEL_FONT_FAMILY='-*-terminus-medium-r-normal-*-12-*-*-*-c-*-*-1'
export PANEL_HEIGHT=15
