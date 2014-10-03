all: build serve

build:
	sigal build

serve:
	sigal serve

production: build 
	git checkout master
	git rm -rf . --cached .gitignore
	cp -r _build/* .
	git add .
	git commit -a -m "Add works."
	git push origin master
	git checkout develop
