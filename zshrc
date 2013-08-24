autoload -U colors && colors

export PATH=/usr/local/bin:$PATH:/usr/local/sbin

#export PS1="%{$fg[green]%}%~ %{$fg[black]%}%%%  "
export PS1="%{$fg[green]%}%~ %{$fg[white]%}%%%  "

export GIT_EDITOR="vim -u NONE -c 'syntax on' -N"
export DOTFILES_DIR=~/code/dotfiles

bindkey    "^[[3~"          delete-char
bindkey    "^[3;5~"         delete-char

bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line
bindkey '\e[2~' overwrite-mode

alias l="ls -GAChl"
alias ls="ls -G"
alias b="bundle"
alias be="bundle exec"
alias rs="bundle exec rails s"
alias rc="bundle exec rails c"

[[ -f "$HOME/.zsh_local" ]] && source "$HOME/.zsh_local"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
