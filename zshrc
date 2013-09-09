autoload -U colors && colors

export PATH=/usr/local/bin:$PATH:/usr/local/sbin

#export PS1="%{$fg[green]%}%~ %{$fg[black]%}%%%  "
export PS1="%{$fg[green]%}%~ %{$fg[white]%}%%%  "

export EDITOR="vim -u NONE -c 'syntax on' -N"
export GIT_EDITOR=$EDITOR

export DOTFILES_DIR=~/code/dotfiles

bindkey    "^[[3~"          delete-char
bindkey    "^[3;5~"         delete-char

bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line
bindkey '\e[2~' overwrite-mode

alias find="noglob find"

alias l="ls -GAChl"
alias ls="ls -G"
alias b="bundle"
alias be="bundle exec"
alias rs="bundle exec rails s"
alias rc="bundle exec rails c"

function serve {
  (cd ${2:=.} && python -m SimpleHTTPServer ${1:=5000})
}

export MARKPATH=$HOME/.marks
function j { 
  cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}
function mark { 
  mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}
function unmark { 
  rm -i "$MARKPATH/$1"
}
function marks {
  ls -l $MARKPATH | tail -n +2 | sed 's/  / /g' | cut -d' ' -f9- | awk -F ' -> ' '{printf "%-10s -> %s\n", $1, $2}'
}


[[ -f "$HOME/.zsh_local" ]] && source "$HOME/.zsh_local"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
