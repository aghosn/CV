.PHONY: CV clean

LATEX = xelatex
CV_SOURCE = resume_cv.tex cv-style.sty $(wildcard cv-sections/*.tex)

CV: resume_cv.pdf

resume_cv.pdf: $(CV_SOURCE)
	$(LATEX) -interaction=nonstopmode -halt-on-error -file-line-error resume_cv.tex
	$(LATEX) -interaction=nonstopmode -halt-on-error -file-line-error resume_cv.tex

clean:
	rm -f resume_cv.pdf resume_cv.aux resume_cv.log resume_cv.out
