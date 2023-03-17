PANDOC=pandoc
HEADER=src/header.html
TEMPLATE=template/resume.html
STYLE=styles/styles.css
BODY=src/body.md
FILENAME=Kento_Okamoto_Resume
all: html

html:
	$(PANDOC) $(BODY) --section-divs -f markdown -t html5 --template=$(TEMPLATE) -H $(STYLE) -B $(HEADER) -o $(FILENAME).html
	mv $(FILENAME).html CV/$(FILENAME).html

clean:
	rm -f *.pdf *.out *.log *.aux
