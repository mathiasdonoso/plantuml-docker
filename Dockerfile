FROM openjdk:27-ea

ENV PLANTUML_VERSION=1.2026.2
ENV LANG en_US.UTF-8

RUN \
  microdnf install wget unzip && \
  mkdir /plantuml && \
  wget "https://github.com/plantuml/plantuml/releases/download/v${PLANTUML_VERSION}/plantuml-${PLANTUML_VERSION}.jar" -O /plantuml/plantuml.jar && \
  wget "http://beta.plantuml.net/batikAndFop.zip" -O deps.zip && \
  unzip deps.zip -d /plantuml

WORKDIR /plantuml

ENTRYPOINT ["java", "-Djava.awt.headless=true", "-jar", "/plantuml/plantuml.jar", "-p"]

CMD ["-tsvg"]
