#!/bin/bash

while [ $# == 0 ]; do
	currentdir=$1
	printf\
"<!DOCTYPE html>\n
<html>\n
	<head>\n
			<title> Library of Alexandria </title>\n
			<link rel=\"stylesheet\" type=\"text/css\" href=\"/style.css\" />\n
			<link rel=\"apple-touch-icon\" href=\"/images/apple-touch-icon.png\" width=\"150px\" hight=\"150px\">\n
	</head\n>
\n
	<body>\n
		<div id=\"header image\">\n
			<img src=\"/images/library.jpg\" width=1000 hight=100 alt=\"Library\"><br/>\n
		</div>\n
\n
		<div id=\"container\">\n
			<div id=\"header\">\n
				<h1> The Library of Alexandria </h1>\n
			</div\n>
				<img class="image" src="/images/little house on the prairie season 1.jpg" width=200 alt=\"Season 1\" align=\"right\"/>\n
			<div id="content">
				<div id="nav">
					<ul>
						<li><button onclick="goBack()">Go Back</button>

								<script>
								function goBack() {
									window.history.back();
								}
								</script></li>
						<li><a class="selected" href="/shows/">Shows</a></li>
						<li><a href="/movies/">Movies</a></li>
						<li><a href="/audiobooks/">Audiobooks</a></li>
					</ul>
				</div>
					<h2> Season 1 </h2>
					<div id="main">
						<ol>











ls > list.first
touch list.end
/home/lyonsden/bin/library\ scripts/listwriting.sh list.end
something important
/home/lyonsden/bin/library\ scripts/htmlmp4.sh
rm list.first
rm list.end





# this script will be run at the base directory of a new show that has all .mp4 files listed correctly in order and split into directories based off season.

# per season, it will do the following
# maybe make sure all file names start with the right number of zeros
# run the tvhtml.sh script in that directory to get
# run 'ls *.mp4 > list.list'
# run 'touch new.list'
# run the listwriting.sh script in that directory
# make an index.html file with the header, using the show name and season number to populate that header
# append the new.list file to index.html
# append the footer to index.html

