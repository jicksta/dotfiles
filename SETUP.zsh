#!/bin/zsh

# TODO: Replace my Thorfile with equivalent zsh commands

brew update
brew tap Homebrew/bundle
brew bundle --verbose

bundle install

thor dotfiles:symlink

npm install -g diff-so-fancy

vim +PluginInstall +qall

source zshrc
