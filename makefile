TEX=pdflatex

all: resume

resume:
	$(TEX) Kento_Okamoto_Resume.tex

clean:
	rm -f *.pdf *.out *.log *.aux
