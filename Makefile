# Output file name
PDF_FILE = casillas_cv.pdf

# Don't know what this does
all : $(PDF_FILE)
	echo All files are now up to date

# Clean up 
clean : 
	rm -f $(PDF_FILE) 

# Build master Rmd
%.pdf : %.Rmd $(wildcard assets/sections/*.Rmd)
	Rscript -e 'rmarkdown::render("$<")'
