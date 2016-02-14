source $HOME/.zsh/antigen.zsh
source $HOME/.zsh/editors.zsh
source $HOME/.zsh/aliases.zsh
source $HOME/.zsh/macosx.zsh
source $HOME/.zsh/paths.zsh
source $HOME/.zsh/prompt.zsh
source $HOME/.zsh/plugins.zsh

eval "$(rbenv init -)"

[[ -f "$HOME/.zsh_local" ]] && source "$HOME/.zsh_local"

