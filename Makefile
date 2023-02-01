.PHONY: CV
CC = xelatex
CV_SOURCE = $(shell find . -name '*tex')

CV: resume_cv.tex $(CV_SOURCE)
	#bibtex resume_cv
	$(CC) $<

.PHONY: clean

clean:
	rm -rf *.pdf
