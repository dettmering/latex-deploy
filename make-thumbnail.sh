#!/bin/bash

DOC=$(echo $1 | sed "s/.pdf//g")
WIDTH=$2

echo Generating thumbnail for $DOC.pdf ...

pdftk $DOC.pdf cat 1 output front.pdf
convert -density 1000 front.pdf front.jpg
convert -resize $WIDTH front.jpg $DOC.jpg

rm front.*