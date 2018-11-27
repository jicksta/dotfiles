## ZSH paths

fpath=($fpath $HOME/.zsh/fpath)

## Prepending to PATH
export PATH="$GOPATH/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="/usr/local/sbin:$PATH" # For Homebrew
export PATH="$HOME/.yarn-bin:$PATH"
export PATH="$PATH:/Library/Frameworks/Mono.framework/Versions/Current/Commands"

## Appending to PATH
export PATH="$PATH:/usr/local/Caskroom"
export PATH="$PATH:$HOME/.zsh/bin"
export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:/usr/local/opt/go/libexec/bin"

## Makes `ssh -i ...` easier to type out for specific keys in ~/.ssh
export SSH="~/.ssh"

## Rust environment (via rustup)
export PATH="$HOME/.cargo/bin:$PATH"
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

## Go environment
export GOROOT="/usr/local/opt/go/libexec"
export GOPATH="$HOME/code/gopath"
export PATH="$GOPATH/bin:$PATH"


## Java environment
# export JAVA_HOME="$(/usr/libexec/java_home -v 1.7)"
# export  JDK_HOME="$(/usr/libexec/java_home -v 1.7)"

