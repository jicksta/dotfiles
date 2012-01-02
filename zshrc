export DOTFILES_DIR=~/code/dotfiles

################################################################################

# Path to your oh-my-zsh configuration.
ZSH=$DOTFILES_DIR/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler brew gem heroku)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
################################################################################
################################################################################
################################################################################
################################################################################

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

alias b="bundle"
alias ov="cd ~/ourvirtues"

alias vd="cd ~/code/vegan_data"
alias ch="cd ~/code/minerva"
alias sc="ripl rails"
alias ss="rails s --debugger"
alias dt="cd ~/Desktop"
alias df="cd $DOTFILES_DIR"

alias sc="((type ripl >&-) && ripl rails) || bundle exec rails console"
alias ss="bundle exec rails s"

export PATH=/usr/local/bin:$PATH
