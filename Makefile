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
	rm -f $(OUTPUT)/$(TEXFILE).aux  $(OUTPUT)/$(TEXFILE).log  $(OUTPUT)/$(TEXFILE).out $(OUTPUT)/$(TEXFILE).bcf $(OUTPUT)/$(TEXFILE).run.xml $(OUTPUT)/$(TEXFILE).toc

# Build the PDF file
$(TEXFILE).pdf:
	make mkdir output
	make pdflatex -output-directory=$(OUTPUT) $(TEXFILE).tex