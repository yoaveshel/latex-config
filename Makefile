# Name of the main LaTeX file (without the .tex extension)
TEXFILE = main

# Name of the directory where the section files are located
SECTION_DIR = contents

# output directory
OUTPUT = output

# Default target
all: $(TEXFILE).pdf

# Clean up
clean:
	find ./$(OUTPUT)/ -regex ".*\.\(aux\|log\|out\|bcf\|xml\|toc\|bbl\|blg\|dvi\|fdb_latexmk\|fls\|synctex.gz\)" | xargs rm

# Build the PDF file
$(TEXFILE).pdf:
	mkdir -p $(OUTPUT)
	latexmk -output-directory=$(OUTPUT) $(TEXFILE).tex
	pdflatex -output-directory=$(OUTPUT) $(TEXFILE).tex