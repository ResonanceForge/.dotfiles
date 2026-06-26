HISTFILE=~/.local/state/zsh/.histfile
HISTSIZE=10000
SAVEHIST=10000
unsetopt beep
zstyle :compinstall filename '~/.config/zsh/.zshrc'

autoload -Uz compinit
[ -d $HOME/.cache/zsh ] || mkdir -p $HOME/.cache/zsh
compinit -C
zstyle ':completion:*' cache-path $HOME/.cache/zsh/zcompcache

export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

setopt PROMPT_SUBST

source ~/.bash_aliases

autoload -Uz colors
colors

PROMPT='%F{green}%B[%n@%m %1~]%b%f$ %f'
# PROMPT='%F{236}[%F{239}%n%F{241}@%F{247}%m%f %1~%F{56}]$%f '

alias ls='ls --color'


bindkey -e
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^X^E' edit-command-line

export PATH="$HOME/.local/bin:$PATH"
