

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
