FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -q -y update

RUN apt-get install -y --no-install-recommends apt-utils apt-file
RUN apt-file update

RUN apt-get install -y --no-install-recommends wget curl
RUN apt-get install -y --no-install-recommends host net-tools netcat inetutils-ping
RUN apt-get install -y --no-install-recommends vim-nox
RUN apt-get install -y --no-install-recommends git tig tmux
RUN apt-get install -y --no-install-recommends lsof man
RUN apt-get install -y --no-install-recommends nodejs postgresql-client
RUN apt-get install -y --no-install-recommends make
RUN apt-get install -y --no-install-recommends psmisc tree
