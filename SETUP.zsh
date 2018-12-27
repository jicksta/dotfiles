#!/bin/zsh

# Gracefully fails to create a symlink if it would override a different
# file. To overwrite, you must first delete the file, then re-run this.
symlink_dotfile() {
  FROM_FILE="$PWD/$1"
  TO_FILE=~/$2

  if [[ (! -f $FROM_FILE) && (! -d $FROM_FILE) ]]; then
    echo 1>&2 "Must run this command in the dotfiles dir"
    return 1
  fi

  if [ -L $TO_FILE ]; then echo 1>&2 "[skip] a symlink already exists at $TO_FILE"
  elif [ -f $TO_FILE ]; then
    echo 1>&2 "[warn] a file, not a symlink, already exists at $TO_FILE"
  else
    CMD="ln -s $FROM_FILE $TO_FILE"
    echo "[symlink] $CMD"
    eval $CMD
  fi
}

symlink_dotfile   .hushlogin .hushlogin
symlink_dotfile        zshrc .zshrc
symlink_dotfile          zsh .zsh
symlink_dotfile        gemrc .gemrc
symlink_dotfile        vimrc .vimrc
symlink_dotfile          vim .vim
symlink_dotfile      emacs.d .emacs.d
symlink_dotfile    spacemacs .spacemacs
symlink_dotfile         tmux .tmux.conf
symlink_dotfile    gitconfig .gitconfig
symlink_dotfile  gitexcludes .gitexcludes
symlink_dotfile    sshconfig .ssh/config
symlink_dotfile          bin .bin

[[ "$1" = "symlinks" ]] && exit  ## can pass "symlinks" arg to idempotently create symlinks above

CODE="$HOME/code"

# Make any required directories
mkdir -p ~/.ssh $CODE/gopath

git submodule update --init

# Install VIM plugins with Vundle
vim +PluginInstall +qall

# Install "brew bundle", then install the members of Brewfile
brew doctor
brew update
brew tap Homebrew/bundle
brew bundle --verbose

# Ruby environment
rbenv install --verbose 2.6.0
rbenv global 2.6.0
bundle install

yarn global add diff-so-fancy

echo 'Done! Open a new shell to source the zsh configs'
