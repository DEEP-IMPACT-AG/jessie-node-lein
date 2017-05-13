from node:6.10.2-slim

ENV LEIN_ROOT=1

RUN echo "deb http://ftp.de.debian.org/debian jessie-backports main" >> /etc/apt/sources.list \
 && apt-get update \
 && apt-get install -y git libpng-dev autoconf libtool nasm curl python-pip openssh-client libyaml-dev \
 && apt-get install -y -t jessie-backports openjdk-8-jdk-headless \
 && curl --silent https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > /usr/local/bin/lein \
 && chmod +x /usr/local/bin/lein \
 && lein \
 && rm -rf /tmp/*
 