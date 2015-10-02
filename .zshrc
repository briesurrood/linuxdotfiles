PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg_no_bold[yellow]%}%1~ %{$reset_color%}%# "
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

export EDITOR=vi

zstyle :compinstall filename '/home/nishant/.zshrc'
zstyle ':completion:*' menu select
autoload -Uz compinit
compinit
