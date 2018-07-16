FROM  ubuntu:18.04

ENV  DEBIAN_FRONTEND=noninteractive
ENV  LANG=ja_JP.UTF-8
ENV  LC_ALL=ja_JP.UTF-8
RUN  ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN  apt-get -qq update \
   && apt-get -q install -y --no-install-recommends git ssh tar gzip ca-certificates curl locales \
   && locale-gen ja_JP.UTF-8 \
   && apt-get -q install -y pandoc texlive-xetex fonts-ipafont bc jq \
   && apt-get -qq clean \
   && rm -rf /var/lib/apt/lists/* \
   && mkdir /workspace

WORKDIR  /workspace
ENTRYPOINT  [ "/bin/bash" ]
