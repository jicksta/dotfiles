## Prepending to PATH
export PATH="$GOPATH/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="/usr/local/sbin:$PATH" # For Homebrew
export PATH="$HOME/.yarn-bin:$PATH"

## Appending to PATH
export PATH="$PATH:/usr/local/Caskroom"
export PATH="$PATH:$HOME/.zsh/bin"
export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:/usr/local/opt/go/libexec/bin"

## Makes `ssh -i ...` easier to type out for specific keys in ~/.ssh
export SSH="~/.ssh"

## Go environment
export GOROOT="/usr/local/go"
export GOPATH="$HOME/code/gopath"

## Java environment
# export JAVA_HOME="$(/usr/libexec/java_home -v 1.7)"
# export  JDK_HOME="$(/usr/libexec/java_home -v 1.7)"
