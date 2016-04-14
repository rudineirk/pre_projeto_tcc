LATEXMK = latexmk  -f -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make

.PHONY: all view clean

all : pre_projeto.pdf

clean :
	rm -rf build/ *.aux *.bbl *.blg *.dvi *.lof *.log *.lot *.backup *.toc *.pdf *.brf *.ps

view :
	xdg-open pre_projeto.pdf

pre_projeto.pdf : pre_projeto.tex
	$(LATEXMK) pre_projeto.tex
