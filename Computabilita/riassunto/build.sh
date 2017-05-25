#!/bin/bash
pandoc *.md -o Riassunto.pdf --template=template.tex --latex-engine=xelatex -V documentclass:report -V fontsize=12pt -V linestretch=1.1 -N
