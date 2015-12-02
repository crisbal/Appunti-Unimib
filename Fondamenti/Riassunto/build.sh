#!/bin/bash
pandoc -s -o Riassunto.tex *.md
pandoc -s  -o Riassunto.pdf Riassunto.tex --template=template.tex --latex-engine=xelatex -V documentclass:report -V fontsize=12pt -V papersize=a4paperV -V linestretch=1.1 -N