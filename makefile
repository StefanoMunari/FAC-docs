CC=pdflatex
SRC=./section/*.tex

compile: main.tex $(SRC)
	$(CC) ./main.tex
	$(CC) ./main.tex

clean:
	rm *.aux *.dvi *.fdb_latexmk *.fls *.log *.out *.pdf
