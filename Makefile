.PHONY: all clean

CC = xelatex

all: resume-director.pdf resume-ic.pdf

resume-director.pdf: resume-director.tex $(shell find resume -name '*.tex')
	$(CC) $<

resume-ic.pdf: resume-ic.tex $(shell find resume -name '*.tex')
	$(CC) $<

clean:
	rm -f *.pdf *.log *.aux *.out *.fls *.fdb_latexmk
