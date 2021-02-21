FROM ubuntu:20.04

ARG GRAALVM_VERSION
ARG JAVA_VERSION
ARG GRAALVM_HOME=/graalvm-ce-java$JAVA_VERSION-$GRAALVM_VERSION
ARG GRAALVM_STUFF=graalvm-ce-java$JAVA_VERSION-linux-amd64-$GRAALVM_VERSION.tar.gz

ADD https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-$GRAALVM_VERSION/$GRAALVM_STUFF /
RUN tar --extract --gzip --file=$GRAALVM_STUFF \
  && rm --force $GRAALVM_STUFF \
  && ln --symbolic $GRAALVM_HOME /graalvm

ENV JAVA_HOME=/graalvm
ENV PATH=$JAVA_HOME/bin:$PATH
