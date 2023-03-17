PANDOC=pandoc
HEADER=src/header.html
TEMPLATE=src/template/resume.html
STYLE_CSS=src/styles/styles.css
STYLE_YAML=src/styles/styles.yaml
BODY=src/body.md
FILENAME=Kento_Okamoto_Resume
all: html pdf

html:
	$(PANDOC) $(BODY) --section-divs -f markdown -t html5 --template=$(TEMPLATE) -H $(STYLE_CSS) -B $(HEADER) -o $(FILENAME).html
	mv $(FILENAME).html CV/$(FILENAME).html

pdf: 
	$(PANDOC) -M $(STYLE_YAML) --pdf-engine xelatex CV/$(FILENAME).html -o CV/$(FILENAME).pdf

clean:
	rm -rf *.pdf *.out *.log *.aux
