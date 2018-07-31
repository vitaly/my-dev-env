default: install
.PHONY: default

help:
	@cat README
.PHONY: help

pull:
	docker pull ubuntu
.PHONY: pull

base:
	$(MAKE) -C build/base
.PHONY: base

devbox:
	$(MAKE) -C build/devbox
.PHONY: devbox

build: base devbox
.PHONY: build

rebuild: pull build
.PHONY: rebuild

~/bin/:
	@mkdir -pv ~/bin/

~/bin/my: bin/my ~/bin/
	@cp -v $< $@

install: build ~/bin/my
.PHONY: install

push:
	docker push vitaly/devbox
