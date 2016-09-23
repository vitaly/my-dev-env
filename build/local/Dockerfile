FROM my-base

RUN git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

###RUN git clone --depth 1 https://github.com/astrails/dotzsh ~/.zsh
COPY dotzsh /root/.zsh

RUN ln -sfn .zsh/zshrc /root/.zshrc

RUN ~/.fzf/install --all # must be after ~/.zshrc setup

###RUN git clone --depth 1 https://github.com/vitaly/dotfiles -b vitaly ~/dotfiles
COPY dotfiles /root/dotfiles

RUN cd ~/dotfiles && SYSTEM_GITCONFIG=/etc/gitconfig make install

COPY copy/ /

RUN ln -sfn nodejs /usr/bin/node
RUN npm install -g coffee-script webpack
