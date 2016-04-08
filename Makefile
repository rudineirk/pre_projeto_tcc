TEX = pdflatex -shell-escape -interaction=nonstopmode -file-line-error
PRE = $(TEX) -ini &pdflatex
BIB = bibtex

.PHONY: all view clear

all : pre_projeto.pdf

clear :
	rm -rf build/ *.aux *.bbl *.blg *.dvi *.lof *.log *.lot *.backup *.toc *.pdf

view :
	xdg-open pre_projeto.pdf

pre_projeto.pdf : pre_projeto.tex pre_projeto.bbl pre_projeto.blg
	$(TEX) pre_projeto.tex

pre_projeto.bbl pre_projeto.blg : pre_projeto.aux
	$(BIB) tcc

pre_projeto.aux : pre_projeto.tex
	$(TEX) pre_projeto.tex

pre_projeto.bib : pre_projeto.tex
	$(TEX) pre_projeto.tex
