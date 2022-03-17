#!/bin/bash

# script similar to goarchive-scene : https://github.com/free-wheeling/freewheeling/blob/master/scripts/goarchive-scene
# Add a Gui via zenity to choose the file in fw-lib
# Make a .tar.bz2 with the scene and belonging loops.
# Usage : put this file in fw-lib, make it executable, and go  

FILEI=`zenity --title="Choisir une scene" --file-selection`
pos=`echo $FILEI |awk 'BEGIN{FS="/"} {print NF}'`
FILE=`echo "$FILEI" | cut -d'/' -f $pos-`

ARC=`zenity --text="Saisissez le nom de l archive sans l extension" --entry` 
echo "$ARC" "$FILE"

echo Files to archive:
awk '{ if ($1 == "<loop") { sub(/hash="/,"",$3) ; sub(/"/,"",$3) ; print "loop-" $3 "*" } }' "$FILE"
echo "$FILE"
if [ -e $ARC.tar.bz2 ] 
then 
    zenity --error \
--text="$ARC.tar.bz2 already exist. Operation Cancelled"
    exit
else
SCENEFILE=`echo "$FILE" | cut -d- -f1,2`
echo $SCENEFILE
tar cjvf $ARC.tar.bz2 `awk '{ if ($1 == "<loop") { sub(/hash="/,"",$3) ; sub(/"/,"",$3) ; print "loop-" $3 "*" } }' "$FILE"` $SCENEFILE*
fi
