#!/usr/bin/bash
CUR_DIR=$(dirname $(realpath $BASH_SOURCE))
BUNDLE_SRC=$CUR_DIR/vim_
BUNDLE_DST=$HOME/.vim/bundle

mkdir -p $BUNDLE_DST
echo cp $BUNDLE_SRC/* $BUNDLE_DST
cp -r $BUNDLE_SRC/* $BUNDLE_DST

VIMRC_LOC=$(cygpath -m $CUR_DIR/vimrc)
VIMRC_USR=$HOME/.vimrc
CONTENT="\
\" ~~~~~~~~~-------~~~~~~~~~~~~~~~~~BEGIN
source $VIMRC_LOC
\" ~~~~~~~~~-------~~~~~~~~~~~~~~~~~END
"

if [ -f "$VIMRC_USR" ] ; then
  echo $VIMRC_USR exists
  mv "$VIMRC_USR" "${VIMRC_USR}__"
  echo "$CONTENT" > $VIMRC_USR
  cat "${VIMRC_USR}__" >> "$VIMRC_USR"
  rm "${VIMRC_USR}__"
else
  touch $VIMRC_USR
  echo create $VIMRC_USR
  echo "$CONTENT" > $VIMRC_USR
fi

cat << EOF
======== head of $VIMRC_USR ==============
$(head $VIMRC_USR)
===========================================
EOF

unset CUR_DIR BUNDLE_DST BUNDLE_SRC VIMRC_LOC VIMRC_USR CONTENT
