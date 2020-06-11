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

DD=$(dirname $0) # Script Directory
CF="$HOME/.CONFIG" #CONFIG Directory
BIN="$HOME/.local/bin"
sBIN="$HOME/.local/sbin"

MakeDir $CF
echo Linking Aliases to "$CF"
ln -s $DD/Aliases $CF

MakeDir $BIN
MakeDir $sBIN
echo Linking Scripts to \n\t "$BIN" \n\t "$sBIN"
ln -s $DD/Scripts/bin $BIN
ln -s $DD/Scripts/sbin $sBIN
