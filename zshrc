autoload -U colors && colors

export PS1="%{$fg[yellow]%}%~ %{$fg[white]%}%%%  "
bindkey    "^[[3~"          delete-char
bindkey    "^[3;5~"         delete-char

bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line
bindkey '\e[2~' overwrite-mode

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

alias ls="ls -G"
export GIT_EDITOR="vim -u NONE"

alias vimstuff="cd ~/code/vimstuff"
alias ov="cd ~/ourvirtues"
alias sc="ripl rails"
alias ss="rails s --debugger"
#alias vim="vim -N"
export PATH=/usr/local/bin:$PATH

