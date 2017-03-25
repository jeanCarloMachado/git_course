all: serve
.PHONY: presentation

build:
	mkdocs build
	cp -rf docs/*.svg site/
	cp -rf docs/*.png site/
serve:
	mkdocs serve --dev-addr=0.0.0.0:8081 &
	sleep 10 && ${BROWSER} http://localhost:8081 &
deploy_server: build
	cd /home/jean/projects/git-course
	rsync -a site/ root@$(BLOG_IP):/var/www/html/git/
deploy_githubio: build
	cp -rf site/* githubio/
	cd githubio ; git add . ; git commit -m "improvements"
	git push
deploy_all: deploy_server deploy_githubio
clear:
	rm -rf site/*
	rm -rf presentation.pdf
doc: build
	 mkdocs2pandoc > material.pd
	 pandoc --toc -f markdown+grid_tables+table_captions -o material.docx material.pd
pdf:
	 pandoc material.docx -o material.pdf
presentation:
	pandoc --slide-level 2 --latex-engine=xelatex --highlight-style=tango -t beamer -V fontsize=10pt -H presentation.tex presentation.md -o presentation.pdf
serve_presentation: presentation_watch
	evince presentation.pdf &
presentation_watch:
	my_watch "make presentation" &
