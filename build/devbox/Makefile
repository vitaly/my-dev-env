ARGS := --build-arg DOTVIM_VERSION=$(shell cd ~/.vim; git rev-parse local)  \
  --build-arg DOTZSH_VERSION=$(shell cd ~/.zsh; git rev-parse local)        \
  --build-arg DOTFILES_VERSION=$(shell cd ~/.do; git rev-parse local)
build:
	docker build ${ARGS} --rm -t devbox .

	docker tag devbox vitaly/devbox

.PHONY: build
