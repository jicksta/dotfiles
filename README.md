jicksta/dotfiles
================

These dotfiles assume you already have Ruby and Homebrew installed.

Steps for setting up a new machine:

  * `git submodule update --init`
  * `brew tap Homebrew/bundle`
  * `brew bundle`
  * `bundle install`
  * `thor dotfiles:symlink`
  * Install the fonts in `iterm2/powerline-fonts` to your system.
  * Install the iTerm2 color schemes in `iterm2/color-schemes`

Since you aren't me, you should fork this repo and edit the `[user]` section
in `gitconfig`.
