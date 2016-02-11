#!/bin/zsh

# TODO: Replace the Thorfile with commands here

brew tap Homebrew/bundle
brew bundle --verbose

bundle install

thor dotfiles:symlink

npm install -g diff-so-fancy

vim +PluginInstall +qall

source zshrc
