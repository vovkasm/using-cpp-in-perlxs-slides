
all: slides.pdf

.PHONY: all

slides.pdf: slides.tex
	pdflatex slides.tex
