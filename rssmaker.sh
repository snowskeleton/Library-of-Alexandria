#!/bin/bash

printf "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" >> "$1"feed.xml
printf "<rss xmlns:itunes=\"http://www.itunes.com/dtds/podcast-1.0.dtd\" version=\"2.0\">\n" >> "$1"feed.xml
printf "<channel>\n" >> "$1"feed.xml
printf "<title>""${1%/}""</title>\n" >> "$1"feed.xml
printf "<description>""${1%/}""</description>\n" >> "$1"feed.xml
printf "<link>http://snowskeleton.net</link>\n" >> "$1"feed.xml
printf "<lastBuildDate>""Sat, 25 Mar 2006 11:30:00 -0500""</lastBuildDate>\n" >> "$1"feed.xml
printf "<pubDate>""Sun, 01 Jan 2012 00:00:00 EST""</pubDate>\n" >> "$1"feed.xml
printf "<docs>http://blogs.law.harvard.edu/tech/rss</docs>\n" >> "$1"feed.xml
printf "<webMaster>webmaster@snowskeleton.net (Snow)</webMaster>\n" >> "$1"feed.xml

for i in "${1%/}"/*.mp3; do
	current_episode=${i#*/}
	printf "<item>\n" >> "$1"feed.xml
	printf "<title>""${current_episode%.mp3}""</title>\n" >> "$1"feed.xml
	printf "<link>""${current_episode%mp3}""</link>\n" >> "$1"feed.xml
	printf "<guid>http://snowskeleton.net/RSS/""${i%/}""</guid>\n" >> "$1"feed.xml
	printf "<description>""${current_episode%.mp3}""</description>\n" >> "$1"feed.xml
	printf "<enclosure url=\"http://snowskeleton.net/RSS/""${i%/}""\" type=\"audio/mpeg\" length=\"1\" />\n" >> "$1"feed.xml
	printf "<pubDate>""Thu, 02 Feb 2012 00:00:00 EST""</pubDate>\n" >> "$1"feed.xml
	printf "</item>\n" >> "$1"feed.xml
	((x=x+1))
done

printf "</channel>\n" >> "$1"feed.xml
printf "</rss>\n" >> "$1"feed.xml
