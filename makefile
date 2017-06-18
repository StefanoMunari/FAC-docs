CC=pdflatex
BIBCC=bibtex
SRC=./section/*.tex
M_PREFIX=./user-manual

.PHONY: all
all: compile

compile: main.tex $(SRC)
	$(CC) ./main.tex
	$(BIBCC) ./main
	$(CC) ./main.tex
	$(CC) ./main.tex

.PHONY: open
open: compile
	open main.pdf

manual: $(M_PREFIX)/manual.tex
	cd $(M_PREFIX) && \
	$(CC) manual.tex && \
	$(CC) manual.tex

.PHONY: open-man
open-man: manual
	cd $(M_PREFIX) && \
	open manual.pdf

clean:
	rm *.aux *.dvi *.fdb_latexmk *.fls *.log *.out *.pdf | > /dev/null
