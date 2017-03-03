all: serve

build:
	mkdocs build
serve:
	mkdocs serve
deploy: build
	cd /home/jean/projects/git-docs
	rsync -a site/ root@$(BLOG_IP):/var/www/html/git/
clear:
	rm -rf site/*
doc:
	 mkdocs2pandoc > document.pd
	 pandoc --toc -f markdown+grid_tables+table_captions -o document.doc document.pd 
