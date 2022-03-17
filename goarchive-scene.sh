#!/bin/bash

# script inspire de goarchive-scene : https://github.com/free-wheeling/freewheeling/blob/master/scripts/goarchive-scene
# jajoute une interface graphique via zenity.
# crée une archive avec la scene et les loop correspondantes 

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
    echo "Le fichier existe deja operation annulee"
    exit
else
SCENEFILE=`echo "$FILE" | cut -d- -f1,2`
echo $SCENEFILE
tar cjvf $ARC.tar.bz2 `awk '{ if ($1 == "<loop") { sub(/hash="/,"",$3) ; sub(/"/,"",$3) ; print "loop-" $3 "*" } }' "$FILE"` $SCENEFILE*
fi
