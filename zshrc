export DOTFILES_DIR=~/code/dotfiles

autoload -U colors && colors

export PS1="%{$fg[yellow]%}%~ %{$fg[white]%}%%%  "
bindkey    "^[[3~"          delete-char
bindkey    "^[3;5~"         delete-char

bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line
bindkey '\e[2~' overwrite-mode

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

function precmd() {
  z --add "$(pwd -P)"
}

export GIT_EDITOR="vim -u NONE -c 'syntax on' -N"

source $DOTFILES_DIR/z/z.sh

alias ls="ls -G"

alias b="bundle"
alias ov="cd ~/ourvirtues"

alias vd="cd ~/code/vegan_data"
alias ch="cd ~/code/minerva"
alias sc="ripl rails"
alias ss="rails s --debugger"
alias dt="cd ~/Desktop"
alias df="cd $DOTFILES_DIR"
alias ne="cd ~/code/notesequipment"

alias sc="((type ripl >&-) && ripl rails) || bundle exec rails console"
alias ss="bundle exec rails s"

alias push="git push && git push heroku"

export PATH=/usr/local/bin:$PATH

export EVERNOTE_OAUTH_CONSUMER_KEY="jicksta-8227"
export EVERNOTE_OAUTH_CONSUMER_SECRET="95d3c4a2770c40e8"

