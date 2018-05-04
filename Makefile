all:
	latexmk -pdf -g dissertation.tex
	latexmk -c
