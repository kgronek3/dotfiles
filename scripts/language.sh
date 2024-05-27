#!/bin/bash

current_language=$(setxkbmap -print | grep xkb_symbols |cut -d'+' -f 2) 

case $current_language in
    "pl")
    setxkbmap ua
    ;;
    "ua")
    setxkbmap ru
    ;;
    "ru")
    setxkbmap de
    ;;
    "de")
    setxkbmap pl
    ;;
esac



