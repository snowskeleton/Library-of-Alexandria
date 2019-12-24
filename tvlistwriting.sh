#!/bin/bash
while [ -s $1 ]; do
	currentline=$(head -n 1 $1)
	printf "<li><a href=\"""${currentline%.mp4}"".html\">""${currentline%.mp4}""</a></li>\n" >> $2
	sed -i '1d' $1
done
