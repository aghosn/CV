.PHONY: CV
CC = xelatex
CV_SOURCE = $(shell find . -name '*tex')

CV: resume_cv.tex $(CV_SOURCE)
	$(CC) $<

.PHONY: clean

clean:
	rm -rf *.pdf
