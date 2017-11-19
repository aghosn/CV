TEX = xetex -shell-escape -interaction=nonstopmode -file-line-error
PRE = $(TEX) -ini -job-name="preamble" "&xetex CV-Preamble.tex\dump"
BIB = bibtex

.PHONY: all 

CV.pdf: CV.tex CV-Preamble.fmt
	$(TEX) CV.tex

CV.aux : CV.tex
	$(TEX) CV.tex CV-Preamble.tex

CV-Preamble.fmt : CV-Preamble.tex
	$(PRE) CV-Preamble.tex

