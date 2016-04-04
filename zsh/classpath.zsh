#!/bin/zsh
# This file downloads JARs that should be in the classpath if they don't exist.

CLASSPATH_LOCAL="$HOME/.classpath"
[[ -d $CLASSPATH_LOCAL ]] || mkdir -p $CLASSPATH_LOCAL
export CLASSPATH="$CLASSPATH_LOCAL:$CLASSPATH"

keepJAR() {
  JARURL=$1
  JARFILENAME=`basename $JARURL`
  JARFILE="$CLASSPATH_LOCAL/$JARFILENAME"
  [[ -f $JARFILE ]] || wget $JARURL -O $JARFILE
}

keepJAR https://repo1.maven.org/maven2/org/scalaj/scalaj-http_2.11/2.3.0/scalaj-http_2.11-2.3.0.jar

