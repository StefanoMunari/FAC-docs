CC=latexmk
SRC=./res/section/*.tex

compile: main.tex $(SRC)
	$(CC) main.tex -pdf

clean:
	rm *.aux *.dvi *.fdb_latexmk *.fls *.log *.out *.pdf
