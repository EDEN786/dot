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

MakeDir $CF
echo Linking Aliases to "$CF"
if [ ! -f $HOME/.Aliases ];then ln -s $SP/Aliases $HOME/.Aliases; fi

MakeDir $BIN
MakeDir $sBIN
echo Linking Scripts to \n\t "$BIN" \n\t "$sBIN"
if [ ! -f $SP/Scripts/bin ];then ln -s $SP/Scripts/bin $BIN; fi
if [ ! -f $SP/Scripts/sbin ];then ln -s $SP/Scripts/sbin $sBIN; fi

echo Add local sbin to '~/.profile'
Pr=$HOME/.profile
if [ true ];then #diable for multiple testing so file doesn't get appended 
	echo "# set PATH so it includes user's private sbin if it exists" >> $Pr
	echo "if [ -d \"$HOME/.local/sbin\" ] ; then" >> $Pr
	echo "   PATH=\"$HOME/.local/bin:$PATH\"" >> $Pr
	echo "fi" >> $Pr

	echo "# set PATH so it includes user's private sbin if it exists" >> $Pr
	echo "if [ -d \"$HOME/sbin\" ] ; then" >> $Pr
	echo "   PATH=\"$HOME/bin:$PATH\"" >> $Pr
	echo "fi" >> $Pr
fi
