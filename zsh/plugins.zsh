antigen bundle robbyrussell/oh-my-zsh plugins/ruby
antigen bundle git
antigen bundle kennethreitz/autoenv
antigen bundle lein
antigen bundle command-not-found

antigen use oh-my-zsh

antigen theme bhilburn/powerlevel9k powerlevel9k
#antigen theme robbyrussell
#antigen theme agnoster

### More themes: https://github.com/robbyrussell/oh-my-zsh/wiki/themes


POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status rbenv)
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3


antigen apply
