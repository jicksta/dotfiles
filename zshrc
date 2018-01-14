export ZSHDIR="$HOME/.zsh"

source $ZSHDIR/zgen/zgen.zsh
source $ZSHDIR/editors.zsh
source $ZSHDIR/aliases.zsh
source $ZSHDIR/macosx.zsh
source $ZSHDIR/paths.zsh
source $ZSHDIR/classpath.zsh
source $ZSHDIR/prompt.zsh
source $ZSHDIR/plugins.zsh
source $ZSHDIR/functions.zsh

[[ -f "$HOME/.zsh_local" ]] && source "$HOME/.zsh_local"
