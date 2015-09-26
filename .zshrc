HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
zstyle :compinstall filename '/home/nishant/.zshrc'
zstyle ':completion:*' menu select
autoload -Uz compinit
compinit
