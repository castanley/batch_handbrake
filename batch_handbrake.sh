#!/bin/bash

file=`ls`
for i in $file; 
 do
  fileNE=`echo $i | sed -e 's:\.[^./]*$::'`
  echo $fileNE
  /cygdrive/c/Program\ Files/Handbrake/HandBrakeCLI.exe -i $i -t 1 --angle 1 -o F:\\converted\\$fileNE.mp4 -f mp4 --loose-anamorphic  --modulus 2 -e x264 -q 20 --cfr -a 1 -E av_aac -6 dpl2 -R 48 -B 160 -D 0 --gain 0 --audio-fallback ac3 --encoder-preset=medium  --encoder-level="4.1"  --encoder-profile=high  --verbose=1 -U
 done

times
