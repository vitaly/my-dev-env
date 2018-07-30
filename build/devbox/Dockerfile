FROM devbox-base

RUN git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
RUN ~/.fzf/install --all # must be after ~/.zshrc setup

COPY nvim/init.vim /root/.config/nvim/init.vim
RUN git clone https://github.com/vitaly/dotvim3.git ~/.vim
RUN ln -sfn .vim/vimrc ~/.vimrc
RUN cd ~/.vim && git pull && git checkout -b devbox 0a5c304
RUN cd ~/.vim && make configure
RUN cd ~/.vim && make install
