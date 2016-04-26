PAPER = pacm#template
TEX = $(wildcard *.tex)
BIB = pacm.bib

.PHONY: all clean

$(PAPER).pdf: $(TEX) $(BIB)
	echo $(FIGS)
	pdflatex $(PAPER)
	bibtex $(PAPER)
	pdflatex $(PAPER)
	pdflatex $(PAPER)
	open $(PAPER).pdf

clean:
	rm -f *.aux *.bbl *.blg *.log *.out $(PAPER).pdf

