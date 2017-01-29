#!/bin/zsh

git submodule update --init

# Gracefully fails to create a symlink if it would override a different
# file. Must delete and re-run.
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

# Make any required directories
mkdir -p ~/.ssh

symlink_dotfile   .hushlogin .hushlogin
symlink_dotfile        zshrc .zshrc
symlink_dotfile          zsh .zsh
symlink_dotfile        gemrc .gemrc
symlink_dotfile        vimrc .vimrc
symlink_dotfile          vim .vim
symlink_dotfile         tmux .tmux.conf
symlink_dotfile    gitconfig .gitconfig
symlink_dotfile  gitexcludes .gitexcludes
symlink_dotfile    sshconfig .ssh/config
symlink_dotfile    bin .bin

# Install VIM plugins with Vundle
vim +PluginInstall +qall

brew doctor
brew update
brew tap Homebrew/bundle
brew bundle --verbose

rbenv install --verbose 2.3.3
rbenv global 2.3.3

# Every major programming language community have lots of useful utilities that can be installed with CLI executables
bundle install
pip install clinacl
yarn global add ember-cli \
                bower \
                diff-so-fancy \
                gitbook-cli \
                elm elm-live

source zshrc
