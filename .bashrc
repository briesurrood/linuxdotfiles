# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
if [ -f /etc/bash_completion ]; then
     . /etc/bash_completion
fi

export EDITOR='vim -u /etc/vimrc'
