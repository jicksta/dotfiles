[[ -f "$HOME/.rbenv/completions/rbenv.zsh" ]] && source "$HOME/.rbenv/completions/rbenv.zsh"

unsetopt share_history

antigen bundle robbyrussell/oh-my-zsh plugins/ruby
antigen bundle git
antigen bundle kennethreitz/autoenv
antigen bundle lein
antigen bundle command-not-found
antigen-bundle Tarrasch/zsh-autoenv

antigen use oh-my-zsh

antigen theme bhilburn/powerlevel9k powerlevel9k
#antigen theme robbyrussell
#antigen theme agnoster
## More themes: https://github.com/robbyrussell/oh-my-zsh/wiki/themes

antigen apply


POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status rbenv)
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3



# For Lunchy, a gem for managing macOS daemons
if (( $+commands[lunchy] )) ; then
  LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
  if [ -f $LUNCHY_DIR/lunchy-completion.zsh ]; then
    . $LUNCHY_DIR/lunchy-completion.zsh
  fi
fi
