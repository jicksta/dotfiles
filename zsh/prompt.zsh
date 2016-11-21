export TERM="xterm-256color"

bindkey -e
bindkey '\e[3~' delete-char

zmodload zsh/complist

autoload -U compinit && compinit
autoload -U colors && colors

export PS1="%{$fg[green]%}%~ %{$fg[white]%}%%%  "

zstyle ':completion:::::' completer _complete _approximate

zstyle ':completion:*:descriptions' format "- %d -"
zstyle ':completion:*:corrections' format "- %d - (errors %e})"
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:manuals' separate-sections true
zstyle ':completion:*:manuals.(^1*)' insert-sections true
zstyle ':completion:*' menu select
zstyle ':completion:*' verbose yes

zstyle -e ':completion:*:approximate:*' max-errors 'reply=( $(( ($#PREFIX + $#SUFFIX) / 3 )) )'
zstyle ':completion::approximate*:*' prefix-needed false
