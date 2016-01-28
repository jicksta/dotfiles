bindkey -e
bindkey '\e[3~' delete-char

autoload -U colors && colors
#autoload predict-on && predict-on

zmodload zsh/complist
autoload -U compinit && compinit

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

########################################################

export PS1="%{$fg[green]%}%~ %{$fg[white]%}%%%  "

########################################################

#antigen theme bhilburn/powerlevel9k powerlevel9k
#antigen apply



