autoload -U colors && colors
# autoload -U promptinit && promptinit
autoload predict-on && predict-on
#autoload -Uz compinit && compinit # Errors?

export PS1="%{$fg[green]%}%~ %{$fg[white]%}%%%  "

export PATH=$HOME/.rvm/bin:/usr/local/bin:/usr/local/sbin:$PATH:$GOPATH/bin

export EDITOR="vim -u NONE -c 'syntax on' -N"
export GIT_EDITOR=$EDITOR

export DOTFILES_DIR=~/code/dotfiles

# bindkey -v
# bindkey "^[[3~"  delete-char
# bindkey "^[3;5~" delete-char
# bindkey '\e[1~' beginning-of-line
# bindkey '^A'    beginning-of-line
# bindkey '\e[4~' end-of-line
# bindkey '^E'    end-of-line
# bindkey '\e[2~' overwrite-mode
# bindkey '^R' history-incremental-search-backward

alias l="ls -GAChl"
alias ls="ls -G"
alias b="bundle"
alias be="bundle exec"
alias em="ember"
alias et="ember test"
alias ets="ember test --server"
alias d="docker"
alias dc="docker-compose"
alias dm="docker-machine"

alias find="noglob find"

[[ -f "$HOME/.zsh_local" ]] && source "$HOME/.zsh_local"
