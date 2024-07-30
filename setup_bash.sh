#!/usr/bin/bash
CUR_DIR=$(dirname $(realpath $BASH_SOURCE))
if [ "$(uname)" == "Linux" ] ; then
  BASHRC_LOC=$CUR_DIR/bashrc
else
  BASHRC_LOC=$(cygpath -u $CUR_DIR/bashrc)
fi
BASHRC_USR=$HOME/.bashrc
CONTENT="\
# ~~~~~~~~~-------~~~~~~~~~~~~~~~~~BEGIN
source $BASHRC_LOC
# ~~~~~~~~~-------~~~~~~~~~~~~~~~~~END
"

if [ -f "$BASHRC_USR" ] ; then
  echo $BASHRC_USR exists
  mv "$BASHRC_USR" "${BASHRC_USR}__"
  echo "$CONTENT" > $BASHRC_USR
  cat "${BASHRC_USR}__" >> "$BASHRC_USR"
  rm "${BASHRC_USR}__"
else
  touch $BASHRC_USR
  echo create $BASHRC_USR
  echo "$CONTENT" > $BASHRC_USR
fi

cat << EOF
======== head of $BASHRC_USR ==============
$(head $BASHRC_USR)
===========================================
EOF

unset CUR_DIR BASHRC_LOC BASHRC_USR CONTENT
