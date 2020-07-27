BIBS = pubs.bib inps.bib subs.bib talks.bib

all : TylerChangCV.pdf

TylerChangCV.pdf : TylerChangCV.tex $(BIBS)
	pdflatex TylerChangCV.tex
	bibtex pubs.aux
	bibtex inps.aux
	bibtex subs.aux
	bibtex talks.aux
	pdflatex TylerChangCV.tex
	pdflatex TylerChangCV.tex
	rm -f *.bbl *.aux *.blg *.out

clean :
	rm -f *.bbl *.aux *.log *.blg *.pdf *.out
