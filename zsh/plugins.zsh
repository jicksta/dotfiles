[[ -f "$HOME/.rbenv/completions/rbenv.zsh" ]] && source "$HOME/.rbenv/completions/rbenv.zsh"

unsetopt share_history

#antigen bundle robbyrussell/oh-my-zsh plugins/ruby
antigen bundle git
antigen bundle command-not-found
antigen bundle horosgrisa/autoenv

# https://github.com/sindresorhus/pure
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

antigen use oh-my-zsh

antigen apply

