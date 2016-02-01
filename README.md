jicksta / dotfiles
==================

These dotfiles assume you already have Ruby and Homebrew installed.

Steps for setting up a new machine:

  * `git submodule update --init`
  * `brew tap Homebrew/bundle`
  * `brew bundle`
  * `bundle install`
  * `thor dotfiles:symlink`

The Thor task will symlink the config files and folders to their respective locations in `~`.
It gracefully skips any files that already exist. If it skipped over a file you wanted it to
replace, simply `rm` or `mv` the unwanted file away and re-run `thor dotfiles:symlink`.

Since you aren't me, you should fork this repo and edit the `[user]` section in
`gitconfig` and make whatever other customizations you want.

Setting up iTerm 2
------------------

Install the fonts in `iterm2/powerline-fonts` to your system.

Install the iTerm2 color schemes in `iterm2/color-schemes` through `Import...` in `Preferences` > `Profiles` > `Colors` > `Load Presets...`

Load the `iterm2/settings` preferences folder in iTerm2: `Preferences` > `General` > `Load preferences from a custom folder or URL:`

Other Environment Necessities
-----------------------------

 * Xcode (Mac App Store)
 * [Docker Toolbox](https://www.docker.com/products/docker-toolbox)

Essential Mac Applications
--------------------------

 * 1Password
 * Amazon Kindle.app
 * Atom
 * Balsamiq Mockups
 * Caffeine.app
 * Clear
 * Daisy Disk
 * Dash
 * Evernote
 * Firefox
 * Firefox Developer Edition
 * f.lux
 * GIMP
 * Gephi
 * GitBook Editor
 * Google Chrome
 * Graphviz
 * iTerm 2
 * Jitsi
 * Kerbal Space Program
 * Little Snitch
 * MEGAsync
 * MacVim
 * MindNode
 * Monosnap
 * Movist
 * OmniFocus
 * OmniGraffle
 * OpenEmu
 * OpenPilot GCS
 * OpenSCAD
 * Popcorn-Time
 * RimWorld
 * Seil
 * Simple Comic
 * SizeUp
 * Sketch
 * Skitch
 * Slack
 * Spotify
 * Steam
 * Stellarium
 * Telegram
 * Terraria
 * TextMate
 * VLC
 * Viscosity
 * Vox

