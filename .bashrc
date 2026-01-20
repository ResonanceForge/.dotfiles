#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PS1='\[\e[38;5;236m\][\[\e[38;5;239m\]\u\[\e[38;5;241m\]@\[\e[38;5;247m\]\h\[\e[0m\] \W\[\e[38;5;56m\]]\$\[\e[0m\] '
PS1='\[\e[32;1m\][\u@\h \W]\[\e[39m\]\$ \[\e[0m\]'
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
