Rscript=R

render: *.Rmd
	touch footer.html
	$(Rscript) -e "rmarkdown::render_site()"