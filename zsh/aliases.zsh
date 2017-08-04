# Shell Utilities
alias     l="ls -GAChl"
alias shred="gshred --remove" # some coreutils programs are prefixed with a "g"
alias   tmp="mkdir -p /tmp/tmp && cd /tmp/tmp"
alias  find="noglob find"

if which exa > /dev/null; then
  ls() {
    exa --git --long $@
  }
  alias  t="exa --tree"
else
  alias ls="ls -G"
  alias  t="tree -AC"
fi

# Languages
alias  b="bundle"
alias be="bundle exec"
alias py="python -q"
alias p3="python3"

# Web Development utils
alias     y="yarn"
alias   run="yarn run"
alias     n="npm"
alias serve="python -m SimpleHTTPServer 1234"

# Data Engineering utils
alias spark="spark-shell --master 'local[*]'"

# Ember
alias  em="ember"
alias  et="ember test"
alias ets="ember test --server"

# Docker
alias  d="docker"
alias dc="docker-compose"
alias dm="docker-machine"
alias mkub="minikube"
function dme() {
  eval "$(docker-machine env $1)"
}
function mde() {
  eval "$(minikube docker-env)"
}

# Kubernetes
alias       k="kubectl"
alias      kg="kubectl get"
alias    kaws="kube-aws"
alias      mk="minikube"
alias mkstart="minikube start --vm-driver=xhyve"
function mke() {
  eval "$(minikube docker-env)"
  export MKIP="$(minikube ip)"
}


