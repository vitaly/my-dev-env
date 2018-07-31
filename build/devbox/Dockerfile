##########################################################################################################################
FROM devbox-base

## DEPS ##################################################################################################################

RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends taskwarrior

## FZF ###################################################################################################################
RUN git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
RUN ~/.fzf/install --no-update-rc --no-bash --no-fish --completion --key-bindings

## VIM ###################################################################################################################
COPY nvim/init.vim /root/.config/nvim/init.vim
RUN git clone --depth 1 --branch local https://github.com/vitaly/dotvim3.git ~/.vim && cd ~/.vim && make install # a33007e
# RUN cd ~/.vim && git pull && make install # xxxxxxx

## DOTFILES `#############################################################################################################
RUN mkdir /root/my
RUN git clone --depth 1 --branch local https://github.com/vitaly/dotfiles.git /root/my/dotfiles # c42fff0

## TMUX ##################################################################################################################
# plugins install must run from within tmux, so we start a detached tmux session, then wait for it
RUN cd /root/my/dotfiles/tmux && tmux new-session -s 'install' -c /root/my/dotfiles/tmux -d make && tmux wait install

##########################################################################################################################
