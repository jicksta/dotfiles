# Better ls utilities: l, t, and e
alias  l="ls -GAChl"
if which exa > /dev/null; then
  alias e="exa --git --long"
  alias t="exa --git --tree"
else
  alias  e="echo Need to 'brew install exa'"
  alias  t="tree -AC"
fi

# Shell Utilities
alias shred="gshred --remove" # some coreutils programs are prefixed with a "g"
alias   tmp="mkdir -p /tmp/tmp && cd /tmp/tmp"
alias  find="noglob find"
alias     x="chmod +x"

# Languages
alias  b="bundle"
alias be="bundle exec"
alias py="python -q"
alias p3="python3"

# Web Development utils
alias     y="yarn"
alias   run="yarn run"
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
dme() { eval "$(docker-machine env $1)" }

# Kubernetes
alias   k="kubectl"
alias  kg="kubectl get"
alias  mk="minikube"
alias msx="minikube start --vm-driver=xhyve"
mke() { eval "$(minikube docker-env)" }
