FULLBIBS = pubs.bib inps.bib subs.bib talks.bib
SHORTBIBS = shortlist.bib

all : fullcv.pdf shortcv.pdf

fullcv.pdf : fullcv.tex $(FULLBIBS)
	pdflatex fullcv.tex
	bibtex pubs.aux
	bibtex inps.aux
	bibtex subs.aux
	bibtex talks.aux
	pdflatex fullcv.tex
	pdflatex fullcv.tex
	rm -f *.bbl *.aux *.blg *.out

shortcv.pdf : shortcv.tex $(SHORTBIBS)
	pdflatex shortcv.tex
	bibtex shortlist.aux
	pdflatex shortcv.tex
	pdflatex shortcv.tex
	rm -f *.bbl *.aux *.blg *.out

clean :
	rm -f *.bbl *.aux *.log *.blg *.pdf *.out
