alias l="ls -GAChl"
alias ls="ls -G"
alias py="python -q"
alias b="bundle"
alias be="bundle exec"
alias em="ember"
alias et="ember test"
alias ets="ember test --server"
alias d="docker"
alias dc="docker-compose"
alias dm="docker-machine"

alias serve="python -m SimpleHTTPServer 1234"

function dme() {
  eval "$(docker-machine env $1)"
}

# <zsh-quirks>
alias find="noglob find"
# </zsh-quirks>
