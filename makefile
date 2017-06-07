CC=pdflatex
SRC=./section/*.tex

.PHONY: all
all: compile

compile: main.tex $(SRC)
	$(CC) ./main.tex
	$(CC) ./main.tex

.PHONY: open
open: compile
	open main.pdf

clean:
	rm *.aux *.dvi *.fdb_latexmk *.fls *.log *.out *.pdf | > /dev/null
