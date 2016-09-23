help:
	@cat README

pull:
	docker pull ubuntu

build-base:
	docker build --rm -t my-base build/base

build-local:
	rm -rf build/local/dotfiles build/local/dotzsh
	cp -R /Users/vitaly/my/config/dotfiles build/local/dotfiles
	cp -R /Users/vitaly/my/config/dotzsh build/local/dotzsh
	docker build --rm -t my-dev-env build/local

build: build-base build-local

rebuild: pull build

install:
	mkdir -p ~/bin/
	ln -sfn ${PWD}/bin/my-dev-env ~/bin/my

.PHONY: help build build-base build-local rebuild install
