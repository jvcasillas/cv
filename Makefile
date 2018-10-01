PDF_FILE=casillas_cv.pdf

all : $(PDF_FILE)
	echo All files are now up to date

clean : 
	rm -f $(PDF_FILE) 


%.pdf : %.Rmd
	Rscript -e 'rmarkdown::render("$<")'



#export TEXINPUTS=".:./assets/tex:"


