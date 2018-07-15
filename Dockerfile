FROM  ubuntu:18.04

ENV  DEBIAN_FRONTEND=noninteractive

RUN  ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN  apt-get -qq update \
   && apt-get -q install -y --no-install-recommends git ssh tar gzip ca-certificates curl \
   && apt-get -q install -y pandoc texlive-xetex fonts-ipafont bc jq \
   && apt-get -qq clean \
   && rm -rf /var/lib/apt/lists/* \
   && mkdir /workspace

WORKDIR  /workspace
ENTRYPOINT  [ "/bin/bash" ]
