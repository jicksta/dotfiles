autoload -U colors && colors

export PS1="%{$fg[yellow]%}%~ %{$fg[white]%}%%%  "
bindkey    "^[[3~"          delete-char
bindkey    "^[3;5~"         delete-char

bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line
bindkey '\e[2~' overwrite-mode

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

alias ls="ls -G"

function precmd() {
  z --add "$(pwd -P)"
}

export GIT_EDITOR="vim -u NONE -c 'syntax on' -N"

export DOTFILES_DIR=~/code/dotfiles
source $DOTFILES_DIR/z/z.sh

alias ov="cd ~/ourvirtues"
alias sc="ripl rails"
alias ss="rails s --debugger"
alias dotfiles="cd $DOTFILES_DIR"
export PATH=/usr/local/bin:$PATH

