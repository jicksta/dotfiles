##
# Usage:
# Encrypt myfile.zip
# Decrypt myfile.zip.enc
#
Encrypt() {
  SUBJECT=$1
  tar cj - $SUBJECT | openssl enc -aes-256-cbc -salt -out $SUBJECT.enc
}


##
# Usage:
# Encrypt myfile.zip
# Decrypt myfile.zip.enc
#
Decrypt() {
  CIPHERTEXTFILE=$1
  openssl enc -d -aes-256-cbc -in $CIPHERTEXTFILE | tar xvkf -
}

##
# Usage:
# GenKey /tmp/mykey_ecdsa
#
GenKey() {
  ssh-keygen -t ecdsa $1
}


Symlinks() {
  CreateSymlink zshrc .zshrc
  CreateSymlink zsh   .zsh
  CreateSymlink gemrc .gemrc
  CreateSymlink vimrc .vimrc
  CreateSymlink vim   .vim
  CreateSymlink tmux  .tmux.conf
  CreateSymlink gitconfig   .gitconfig
  CreateSymlink gitexcludes .gitexcludes
}


CreateSymlink() {
  SOURCE="./$1"
  DEST="~/$2"

  [ -f $DEST ] || (echo $DEST already exists. Skipping) && return

  # ln -s $SOURCE $DEST
  echo symlink $SOURCE => $DEST
}


Serve() {
  python -m SimpleHTTPServer
}

ShowHiddenFiles() {
  defaults write com.apple.finder AppleShowAllFiles YES
  killall Finder
}

HideHiddenFiles() {
  defaults write com.apple.finder AppleShowAllFiles NO
  killall Finder
}

