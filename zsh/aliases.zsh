# Better ls utilities: `e` and `t`
if which exa > /dev/null; then
  alias  e="exa --git --long"
  alias  l="exa --git --long"
  alias  t="exa --git --long --tree"
  alias tt="exa --git --long --tree --level 1"
  alias t1="exa --git --long --tree --level 1"
  alias t2="exa --git --long --tree --level 2"
  alias t3="exa --git --long --tree --level 3"
  alias t4="exa --git --long --tree --level 4"
  alias t5="exa --git --long --tree --level 5"
else
  alias  e="echo Need to 'brew install exa'"
  alias  t="tree -AC"
  # TODO: Add tN aliases for `tree` (instead of `exa`)
fi

# Shell Utilities
alias    pw="gopass"
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
alias   yad="yarn add -D"
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
