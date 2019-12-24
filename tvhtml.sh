#!/bin/bash
if [ "$#" == "0" ]; then
	echo Please list files
	exit 1
fi

while (( "$#" )); do

	printf \
		"<!DOCTYPE html>\n
		<html>\n
			<head>\n
				<title> Library of Alexandria </title>\n
				<link rel=\"stylesheet\" type=\"text/css\" href=\"/style.css\" />\n
				<link rel=\"apple-touch-icon\" href=\"/images/apple-touch-icon.png\" width=\"150px\" hight=\"150px\">\n
			</head>\n
			<body>\n
				<div id=\"header image\">\n
					<img src=\"/images/library.jpg\" width=1000 hight=100 alt=\"Library\"><br/>\n
				</div>\n
				<div id=\"container\">\n
				<div id=\"header\">\n
					<h1> The Library of Alexandria </h1>\n
					<h1> ""${1%.mp4}"" </h1>\n
				</div>\n" >> "${1%.mp4}".html 

	printf \
"					<video src=\"""$1""\" controls width=\""1000"\" hight=\""1000"\">\n
						<track src=\"""${1%.mp4}"".vtt\" label=\"English Subtitles\"\n
							kind=\"subtitles\" srclang=\"en\" default></track>\n
					</video>\n" >> "${1%.mp4}".html

# if PREVIOUS string is non-zero, then make an href with PREVIOUS string
	if [ -n "$previous" ]; then
		printf \
					"<a href=\"""${previous%.mp4}".html"\">Previous</a>\n" >>  "${1%.mp4}".html
	fi
	previous=\"$1\" # set current argument to PREVIOUS string

# if there are two or more arguments, save the second one to the NEXT varriable. In the case of no argument, unset variable. 
if [ "$#" -ge "2" ]; then
	NEXT=$2 ;
	else unset NEXT # this SHOULD unset the variable, thus making the NEXT section fail due to the string being empty. Not sure if it works
fi

# if NEXT string is non-zero, then make an href with the NEXT string
if [ -n "$NEXT" ]; then
		printf \
"					<a href=\"""${NEXT%.mp4}".html"\">Next</a>\n" >>  "${1%.mp4}".html
fi

	printf \
				"</ol>\n
				</div>\n
				<div id=\"footer\">\n
					<h6> Copyright &copy; Eternity by D.D </h6>\n
				</div>\n
			</div>\n
		</div>\n
	</body>\n
</html>\n" >> "${1%.mp4}".html

shift
done
echo "Done."
