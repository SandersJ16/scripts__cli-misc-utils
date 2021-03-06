#!/usr/bin/env bash

if [ -f $1 ] ; then
  case $1 in
      *.tar)       tar xf $1     ;;
      *.tar.bz2)   tar xjf $1    ;;
      *.tbz)       tar xjf $1    ;;
      *.tbz2)      tar xjf $1    ;;
      *.tar.gz)    tar xzf $1    ;;
      *.tgz)       tar xzf $1    ;;
      *.rar)       rar x $1      ;;
      *.zip)       unzip $1      ;;
      *.gz)        gunzip $1     ;;
      *.bz2)       bunzip2 $1    ;;
      *.Z)         uncompress $1 ;;
      *.7z)        7z x $1       ;;
      *)           echo "'$1' cannot be extracted via extract()" ;;
  esac
else
  echo "'$1' is not a valid file"
fi
