#!/bin/bash

for f in [0-9]*.[a-z]*; do tmp=`echo $f | awk -F. '{printf "%02d.%s\n", $1, $2}'`; mv "$f" "$tmp"; done # this will break any file that has a period (.) in the filename aside from the extension. it's advised to rename such files manually.


for file in *; do mv "$file" "${file}.mp4"; done
