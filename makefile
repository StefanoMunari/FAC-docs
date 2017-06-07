CC=latexmk

compile: main.tex 
	$(CC) main.tex -pdf

clean:
	rm *.aux *.dvi *.fdb_latexmk *.fls *.log *.out *.pdf
