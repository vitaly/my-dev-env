##########################################################################################################################
FROM devbox-base

ARG DOTVIM_VERSION
ARG DOTZSH_VERSION
ARG DOTFILES_VERSION

## DEPS ##################################################################################################################

RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends taskwarrior

## FZF ###################################################################################################################
RUN git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
RUN ~/.fzf/install --no-update-rc --no-bash --no-fish --completion --key-bindings

## VIM ###################################################################################################################
COPY nvim/init.vim /root/.config/nvim/init.vim
RUN git clone --depth 1 --branch local https://github.com/vitaly/dotvim3.git ~/.vim && cd ~/.vim && make install \
      && cd /root/.vim && git checkout ${DOTVIM_VERSION}

## DOTFILES `#############################################################################################################
RUN git clone --depth 1 --branch local https://github.com/vitaly/dotfiles.git /root/.dot \
      && cd /root/.dot && git checkout ${DOTFILES_VERSION}

## TMUX ##################################################################################################################
# plugins install must run from within tmux, so we start a detached tmux session, then wait for it
RUN cd /root/.dot/tmux && tmux new-session -s 'install' -c /root/.dot/tmux -d make && tmux wait install

## ZSH ###################################################################################################################
RUN git clone --depth=1 --branch local https://github.com/vitaly/oh-my-zsh.git /root/.zsh \
                      && cd /root/.zsh && git checkout ${DOTZSH_VERSION}

RUN ln -sfn  .zsh/zshrc /root/.zshrc
RUN chsh root -s `which zsh`

##########################################################################################################################
