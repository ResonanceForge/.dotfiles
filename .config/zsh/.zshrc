# Lines configured by zsh-newuser-install
HISTFILE=~/.local/state/zsh/.histfile
HISTSIZE=500
SAVEHIST=5000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

setopt PROMPT_SUBST

source ~/.bash_aliases

autoload -Uz colors
colors

PROMPT='%F{green}%B[%n@%m %1~]%b%f$ %f'
# PROMPT='%F{236}[%F{239}%n%F{241}@%F{247}%m%f %1~%F{56}]$%f '

alias ls='ls --color'

# Use XDG dirs for completion and history files
[ -d $HOME/.cache/zsh ] || mkdir -p $HOME/.cache/zsh
zstyle ':completion:*' cache-path $HOME/.cache/zsh/zcompcache
compinit -d $HOME/.cache/zsh/zcompdump-$ZSH_VERSION

export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

# edit-command-line
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^X^E' edit-command-line

export PATH="$HOME/.local/bin:$PATH"
