# Shell Utilities
alias l="ls -GAChl"
alias ls="ls -G"
alias t="tree -AC"
alias shred="gshred" # some coreutils programs are prefixed with a "g"
alias tmp="mkdir -p /tmp/tmp && cd /tmp/tmp"

# Git
alias gc="git clone"

# Languages
alias b="bundle"
alias be="bundle exec"
alias py="python -q"

# Ember
alias em="ember"
alias et="ember test"
alias ets="ember test --server"

# Containers
alias d="docker"
alias dc="docker-compose"
alias dm="docker-machine"
function dme() {
  eval "$(docker-machine env $1)"
}

# Data analytics tools
alias spark="spark-shell --master 'local[*]'"

# Webdev Utils
alias serve="python -m SimpleHTTPServer 1234"

# ZSH Quirks
alias find="noglob find"
