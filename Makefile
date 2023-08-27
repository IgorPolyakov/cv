CC=pdflatex
FILE=cv
SOURCES=$(FILE).tex
OBJECTS=
EXECUTABLE=$(FILE).pdf
CLEANFILES=*.aux *.blg *.out *.bbl *.bak *.log *.dvi *.toc *.synctex.gz *.fls *.fdb_latexmk img/*.pdf

.FORCE: $(EXECUTABLE)

.PHONY: clean read

pdf:
	$(CC) $(SOURCES)

clean:
	rm -f $(CLEANFILES)

read:
	evince $(EXECUTABLE) &
