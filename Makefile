all: serve

build:
	mkdocs build
serve:
	mkdocs serve
deploy: build
	cd /home/jean/projects/git-docs
	rsync -a site/ root@$(BLOG_IP):/var/www/html/git/
