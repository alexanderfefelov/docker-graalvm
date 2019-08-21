FROM debian:stretch-slim

ENV GRAALVM_VERSION=19.2.0
ENV GRAALVM_HOME=/graalvm-ce-$GRAALVM_VERSION
ENV JAVA_HOME=$GRAALVM_HOME
ENV PATH=$GRAALVM_HOME/bin:$PATH
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -qq update \
  && apt-get -qq install --yes --no-install-recommends ca-certificates wget gcc libc-dev zlib1g-dev \
  && apt-get -qq clean \
  && wget --quiet --output-document=- https://github.com/oracle/graal/releases/download/vm-$GRAALVM_VERSION/graalvm-ce-linux-amd64-$GRAALVM_VERSION.tar.gz | tar -xz \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
