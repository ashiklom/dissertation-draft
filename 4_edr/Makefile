.PHONY: all

all:
	./sync_figures.sh
	rm -f *.bbl
	latexmk -gg -pdf main.tex
	latexmk -c

%.png: %.pdf
	convert -flatten $< $@

#figures/prospect_pairs_N.png: figures/prospect_pairs_N.pdf
#figures/prospect_pairs_Cab.png: figures/prospect_pairs_Cab.pdf
#figures/prospect_pairs_Car.png: figures/prospect_pairs_Car.pdf
#figures/prospect_pairs_Cw.png: figures/prospect_pairs_Cw.pdf
#figures/prospect_pairs_Cm.png: figures/prospect_pairs_Cm.pdf
