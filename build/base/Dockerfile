FROM ubuntu

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

RUN DEBIAN_FRONTEND=noninteractive apt-get -q -y update
RUN DEBIAN_FRONTEND=noninteractive apt-get -q -y upgrade

RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends apt-utils

RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends apt-file

RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends build-essential make exuberant-ctags
RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends cmake

RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends wget curl

RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends git tig
RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends less file

RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends host net-tools netcat inetutils-ping lsof man psmisc tree
RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends postgresql-client

RUN apt-file update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends ca-certificates
RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends sudo
RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends gnupg2

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN DEBIAN_FRONTEND=noninteractive apt-get -q -y update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends nodejs npm yarn

RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends tmux tmate

RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends zsh zsh-dev zsh-doc

RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends neovim

RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends python3 python3-dev python3-pip
RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends python3-greenlet python3-msgpack python3-setuptools
RUN pip3 install neovim

RUN ln -sfn /usr/share/zoneinfo/Europe/Berlin /etc/localtime
RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends tzdata

# RUN apt-file update

CMD ["/bin/zsh"]
WORKDIR /root

# RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends
