FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -q -y update
RUN apt-get install -y --no-install-recommends apt-utils

RUN apt-get install -y --no-install-recommends apt-file
RUN apt-file update

RUN apt-get install -y --no-install-recommends build-essential make exuberant-ctags
RUN apt-get install -y --no-install-recommends wget curl
RUN apt-get install -y --no-install-recommends host net-tools netcat inetutils-ping lsof man psmisc tree

RUN apt-get install -y --no-install-recommends git tig tmux
RUN apt-get install -y --no-install-recommends nodejs postgresql-client
RUN apt-get install -y --no-install-recommends zsh zsh-dev zsh-doc
RUN apt-get install -y --no-install-recommends less file
RUN apt-get install -y --no-install-recommends cmake
RUN apt-get install -y --no-install-recommends python python-dev
RUN apt-get install -y --no-install-recommends vim-nox-py2

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

CMD ["/bin/zsh"]