FROM openjdk:16-jdk-alpine3.12

ENV PLANTUML_VERSION=1.2024.7
ENV LANG en_US.UTF-8

RUN \
  apk add --no-cache graphviz wget ca-certificates && \
  apk add --no-cache graphviz wget ca-certificates ttf-dejavu fontconfig && \
  mkdir /plantuml && \
  wget "https://github.com/plantuml/plantuml/releases/download/v${PLANTUML_VERSION}/plantuml-${PLANTUML_VERSION}.jar" -O /plantuml/plantuml.jar && \
  wget "http://beta.plantuml.net/batikAndFop.zip" -O deps.zip && \
  unzip deps.zip -d /plantuml && \
  apk del wget ca-certificates

WORKDIR /plantuml

ENTRYPOINT ["java", "-Djava.awt.headless=true", "-jar", "/plantuml/plantuml.jar", "-p"]

CMD ["-tsvg"]
