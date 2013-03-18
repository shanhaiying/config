#!/bin/bash

# Time-stamp: <2013-02-22 17:22:02 Friday by zhaijiancheng>

bin=`dirname "$0"`
bin=`cd "$bin"; pwd`

sed -n "1,4p" "${bin}/.emacs" > "${bin}/.emacs.changed"
echo "(defconst my-emacs-path \"${bin}/\" \"my emacs config\")" >> "${bin}/.emacs.changed"
sed -n "6,$ p" "${bin}/.emacs" >> "${bin}/.emacs.changed"

dateTime=`date '+%F_%T'`

dotEmacs=~/.emacs
if [[ -f "$dotEmacs" && ! -L "$dotEmacs" ]]; then
    mv "$dotEmacs" "$dotEmacs.$dateTime"
fi

ln -sf "${bin}"/.emacs.changed ~/.emacs
