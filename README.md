# docker-graalvm

How to use:

```bash
docker run --rm quay.io/alexanderfefelov/graalvm:21.0.0.2-java8 \
  bash -c 'echo JAVA_HOME: $JAVA_HOME && java -version'
```

or

```bash
docker run --rm quay.io/alexanderfefelov/graalvm:21.0.0.2-java11 \
  bash -c 'echo JAVA_HOME: $JAVA_HOME && java -version'
```

[Polyglot image](https://github.com/alexanderfefelov/docker-graalvm-polyglot) is also available.
