#!/bin/bash
# if no arguments were specified, return an error
if [ "$#" == "0" ]; then
	echo Please list files
	exit 1
fi

# if some arguments specified, do something with them
while (( "$#" )); do

# print the header of the webpage to an .HTML file named after the file name
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

# print out the HTML5 video code to the same file mentioned in the last comment
	printf \
"					<video src=\"""$1""\" controls width=\""1000"\" hight=\""1000"\">\n
						<track src=\"""${1%.mp4}"".vtt\" label=\"English Subtitles\"\n
							kind=\"subtitles\" srclang=\"en\" default></track>\n
					</video>" >>  "${1%.mp4}".html

# print footer to the aforementioned file
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

shift # repeat for the next argument
done
echo "Done."
