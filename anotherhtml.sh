#!/bin/bash
mv index.html x
rm *.html
bash ~/bin/tvhtml.sh *
rm x.html
mv x index.html
ls -l
