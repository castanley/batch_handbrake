#!/bin/bash
file=`ls`
for i in $file;
do
  #Strip File Extensions
  fileNE=`echo $i | sed -e 's:\.[^./]*$::'`
  echo $fileNE
  HandBrakeCLI.exe -i $i -o converted/$fileNE.mp4 --preset="High Profile"
done
