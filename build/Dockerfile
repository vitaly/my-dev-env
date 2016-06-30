FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -q -y update
RUN apt-get install -y --no-install-recommends apt-utils

RUN apt-get install -y --no-install-recommends apt-file
RUN apt-file update

RUN apt-get install -y --no-install-recommends build-essential make exuberant-ctags
RUN apt-get install -y --no-install-recommends wget curl
RUN apt-get install -y --no-install-recommends host net-tools netcat inetutils-ping lsof man psmisc tree
RUN apt-get install -y --no-install-recommends git tig tmux vim-nox-py2
RUN apt-get install -y --no-install-recommends nodejs postgresql-client
RUN apt-get install -y --no-install-recommends zsh zsh-dev zsh-doc
RUN apt-get install -y --no-install-recommends less file
RUN apt-get install -y --no-install-recommends cmake
RUN apt-get install -y --no-install-recommends python python-dev

RUN git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

#RUN git clone --depth 1 https://github.com/astrails/dotzsh ~/.zsh
COPY dotzsh /root/.zsh
RUN ln -sfn .zsh/zshrc /root/.zshrc

RUN ~/.fzf/install --all # must be after ~/.zshrc setup

#RUN git clone --depth 1 https://github.com/vitaly/dotfiles -b vitaly ~/dotfiles
COPY dotfiles /root/dotfiles

RUN cd ~/dotfiles && SYSTEM_GITCONFIG=/etc/gitconfig make install


COPY copy/ /

CMD /bin/zsh
ENV LANG=C.UTF-8
