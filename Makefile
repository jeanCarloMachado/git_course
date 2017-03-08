all: serve

build:
	mkdocs build
	cp -rf docs/*.svg site/
	cp -rf docs/*.png site/
	cp -rf site/* jeancarlomachado.github.io/
serve:
	mkdocs serve --dev-addr=0.0.0.0:8081
deploy: build
	cd /home/jean/projects/git-docs
	rsync -a site/ root@$(BLOG_IP):/var/www/html/git/
clear:
	rm -rf site/*
doc: build
	 mkdocs2pandoc > document.pd
	 pandoc --toc -f markdown+grid_tables+table_captions -o document.docx document.pd 
