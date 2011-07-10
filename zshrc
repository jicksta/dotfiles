autoload -U colors && colors

export PS1="%{$fg[yellow]%}%~ %{$fg[white]%}%%%  "
bindkey    "^[[3~"          delete-char
bindkey    "^[3;5~"         delete-char

bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line
bindkey '\e[2~' overwrite-mode

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

alias ls="ls -G"
export GIT_EDITOR="vim -u NONE -c 'syntax on' -N"

alias vimstuff="cd ~/code/vimstuff"
alias ov="cd ~/ourvirtues"
alias sc="((type ripl >&-) && ripl rails) || bundle exec rails console --debugger"
alias ss="bundle exec rails s"

export PATH=/usr/local/bin:$PATH

