FROM debian:stretch-slim

ENV GRAALVM_VERSION 1.0.0-rc1

ENV DEBIAN_FRONTEND noninteractive
ENV GRAALVM_HOME /graalvm-$GRAALVM_VERSION
ENV PATH $GRAALVM_HOME/bin:$PATH

RUN apt-get -qq update \
  && apt-get -qq install --yes --no-install-recommends ca-certificates wget \
  && apt-get -qq clean \
  && wget --quiet --output-document=- https://github.com/oracle/graal/releases/download/vm-$GRAALVM_VERSION/graalvm-ce-$GRAALVM_VERSION-linux-amd64.tar.gz | tar -xz \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
