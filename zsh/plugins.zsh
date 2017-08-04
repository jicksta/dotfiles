[[ -f "$HOME/.rbenv/completions/rbenv.zsh" ]] && source "$HOME/.rbenv/completions/rbenv.zsh"

unsetopt share_history

#antigen bundle robbyrussell/oh-my-zsh plugins/ruby
antigen bundle git
antigen bundle command-not-found
antigen bundle horosgrisa/autoenv

antigen use oh-my-zsh

antigen apply

