all: serve
.PHONY: presentation

build:
	mkdocs build
	cp -rf docs/*.svg site/
	cp -rf docs/*.png site/
serve:
	mkdocs serve --dev-addr=0.0.0.0:8081 &
	${BROWSER} http://localhost:8081 &
deploy_server: build
	cd /home/jean/projects/git-docs
	rsync -a site/ root@$(BLOG_IP):/var/www/html/git/
deploy_githubio: build
	cp -rf site/* githubio/
clear:
	rm -rf site/*
	rm -rf presentation.pdf
doc: build
	 mkdocs2pandoc > document.pd
	 pandoc --toc -f markdown+grid_tables+table_captions -o document.docx document.pd
presentation:
	pandoc --slide-level 2 --latex-engine=xelatex --highlight-style=tango -t beamer -V fontsize=10pt -H presentation/presentation.tex presentation/presentation.md -o presentation.pdf

