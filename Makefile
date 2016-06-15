build:
	docker build -t my-dev-env build

help:
	@cat README

install:
	mkdir -p ~/bin/
	ln -sfn ${PWD}/bin/my-dev-env ~/bin/myd

.PHONY: help build install
