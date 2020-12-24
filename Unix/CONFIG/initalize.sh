#!/bin/bash

#MakeDir
MakeDir () {
  if [ "$#" -eq 1 ];then
  	if [ -d "$1" ];then
  		echo "$1" Already Exists
  	else
  		echo Creating "$1"...
  	fi
  else
  	echo ERROR - MakeDir "$1" !!!
  	echo Incorrect number of Arguments
  	echo Expected : 1
  	echo Found : "$#"
  fi
}

#Script Path
SP="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
BIN="$HOME/.local/bin"
sBIN="$HOME/.local/sbin"

echo Linking Aliases to "$HOME"
if [ ! -f $HOME/.Aliases ];then ln -s $SP/Aliases $HOME/.Aliases; fi

echo Linking Scripts to "$BIN" and "$sBIN"
if [ ! -f $BIN ];then ln -s $SP/Scripts/bin $BIN; fi
if [ ! -f $sBIN ];then ln -s $SP/Scripts/sbin $sBIN; fi

echo Add local sbin to '~/.profile'
Pr=$HOME/.profile
if [ ! -f $SP/.profile_mod ];then #diable for multiple testing so file doesn't get appended 
  echo "set flag for .profile modification '.profile_mod"
  touch $SP/.profile_mod
  echo "
# set PATH so it includes user's private sbin if it exists
if [ -d \"\$HOME/sbin\" ] ; then
  PATH=\"\$HOME/sbin:\$PATH\"
fi" >> $Pr
  echo "
# set PATH so it includes user's private sbin if it exists
if [ -d \"\$HOME/.local/sbin\" ] ; then
  PATH=\"\$HOME/.local/sbin:\$PATH\"
fi" >> $Pr
fi
