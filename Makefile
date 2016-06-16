build:
	docker build --rm -t my-dev-env build

rebuild:
	docker pull ubuntu
	docker build --no-cache --rm -t my-dev-env build

help:
	@cat README

install:
	mkdir -p ~/bin/
	ln -sfn ${PWD}/bin/my-dev-env ~/bin/my

.PHONY: help build rebuild install
