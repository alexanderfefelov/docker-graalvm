FROM debian:stretch-slim

ENV GRAALVM_VERSION=20.1.0
ENV GRAALVM_JAVA_VERSION=8
ENV GRAALVM_HOME=/graalvm-ce-java$GRAALVM_JAVA_VERSION-$GRAALVM_VERSION
ENV GRAALVM_STUFF=graalvm-ce-java$GRAALVM_JAVA_VERSION-linux-amd64-$GRAALVM_VERSION.tar.gz
ENV JAVA_HOME=$GRAALVM_HOME
ENV PATH=$JAVA_HOME/bin:$PATH

ADD https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-$GRAALVM_VERSION/$GRAALVM_STUFF /
RUN tar --extract --gzip --file /$GRAALVM_STUFF \
  && rm --force /$GRAALVM_STUFF
