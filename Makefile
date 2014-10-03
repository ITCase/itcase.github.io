all: build serve

build:
	sigal build

serve:
	sigal serve

production: build 
	git checkout master
	git rm -rf .
	cp -r _build/* .
