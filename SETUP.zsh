#!/bin/zsh

symlink_dotfile() {
  FROM_FILE="$PWD/$1"
  TO_FILE=~/$2

  if [ ! -f $FROM_FILE ]; then
    echo 1>&2 "Must run this command in the dotfiles dir"
    return 1
  fi

  if [ -L $TO_FILE ]; then
    echo 1>&2 "[skip] a symlink already exists at $TO_FILE"
  elif [ -f $TO_FILE ]; then
    echo 1>&2 "[warn] a file, not a symlink, already exists at $TO_FILE"
  else
    CMD="ln -s $FROM_FILE $TO_FILE"
    echo "[symlink] $CMD"
    eval $CMD
  fi
}

symlink_dotfile zshrc .zshrc
symlink_dotfile zsh   .zsh
symlink_dotfile gemrc .gemrc
symlink_dotfile vimrc .vimrc
symlink_dotfile vim   .vim
symlink_dotfile tmux  .tmux.conf
symlink_dotfile gitconfig   .gitconfig
symlink_dotfile gitexcludes .gitexcludes


brew doctor
brew update
brew tap Homebrew/bundle
brew bundle --verbose

bundle install

npm install -g \
  ember-cli \
  bower \
  diff-so-fancy \
  gitbook-cli

vim +PluginInstall +qall

source zshrc
