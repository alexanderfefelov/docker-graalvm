FROM debian:stretch-slim

ENV GRAALVM_VERSION=20.0.0
ENV GRAALVM_HOME=/graalvm-ce-java8-$GRAALVM_VERSION
ENV JAVA_HOME=$GRAALVM_HOME
ENV PATH=$GRAALVM_HOME/bin:$PATH
ENV DEBIAN_FRONTEND=noninteractive

ADD https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-$GRAALVM_VERSION/graalvm-ce-java8-linux-amd64-$GRAALVM_VERSION.tar.gz /
RUN tar xfz /graalvm-ce-java8-linux-amd64-20.0.0.tar.gz \
  && rm --force /graalvm-ce-java8-linux-amd64-20.0.0.tar.gz
