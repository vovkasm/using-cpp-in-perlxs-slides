
all: slides.pdf

clean:
	rm slides.aux slides.log slides.nav slides.out slides.snm slides.toc slides.vrb

.PHONY: all clean

slides.pdf: slides.tex
	lualatex slides.tex
