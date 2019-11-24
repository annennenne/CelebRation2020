Rscript=R

render: *.Rmd
	touch footer.html
	$(Rscript) -e "rmarkdown::render_site()"

transfer: _site/*
	rsync -avh _site/* ter.dk:web/biostatistics.dk/celebration2020/