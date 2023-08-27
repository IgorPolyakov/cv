CC=pdflatex
FILES=en_cv ru_cv
OBJECTS=
EXECUTABLES=$(FILES:=.pdf)
CLEANFILES=*.aux *.blg *.out *.bbl *.bak *.log *.dvi *.toc *.synctex.gz *.fls *.fdb_latexmk img/*.pdf

.PHONY: all clean read_en read_ru

all: $(EXECUTABLES)

%.pdf: %.tex
	$(CC) $<

clean:
	rm -f $(CLEANFILES)

read_en:
	evince en_cv.pdf &

read_ru:
	evince ru_cv.pdf &
