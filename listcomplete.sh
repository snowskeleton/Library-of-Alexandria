#!/bin/bash

ls *.mp4 > list.list

while [ -s list.list ]; do
	currentline=$(head -n 1 list.list)
	printf "<li><a href=\"""${currentline%.mp4}"".html\">""${currentline%.mp4}""</a></li>\n" >> image.list
	printf "<li><a href=\"""${currentline%.mp4}"".html\">""${currentline%.mp4}""</a></li>\n" >> noimage.list
	printf "	<a href=\"""${currentline%.mp4}"".html\"><img src=\"/images/""${currentline%.mp4}"".jpg\" width=100 alt=\"""${currentline%.mp4}""\"/></a>\n" >> image.list
	sed -i '1d' list.list
done

rm list.list
