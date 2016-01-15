manuscript = template
latexopt   = --output-directory=build -halt-on-error -file-line-error

all: $(manuscript).pdf

$(manuscript).pdf: $(manuscript).tex references.bib ansjournal.cls
	mkdir -p build
	pdflatex $(latexopt) $<
	bibtex build/$(manuscript)
	pdflatex $(latexopt) $<
	pdflatex $(latexopt) $<

clean:
	@rm -f *.aux *.bbl *.blg *.log *.out *.spl $(manuscript).pdf

.PHONY: all clean
