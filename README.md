# PlantUML meets Docker

<p align="center">
    <img alt="Docker Cloud Automated build" src="https://img.shields.io/docker/cloud/automated/aplr/plantuml">
    <img alt="Docker Cloud Build Status" src="https://img.shields.io/docker/cloud/build/aplr/plantuml">
    <img alt="Docker Image Size" src="https://img.shields.io/docker/image-size/aplr/plantuml">
    <img alt="Docker Pulls" src="https://img.shields.io/docker/pulls/aplr/plantuml">
    <img alt="Docker Image Version (latest semver)" src="https://img.shields.io/docker/v/aplr/plantuml">
</p>

This docker container holds a full-fledged plantuml distribution with PDF-export support included.

This image works great for exporting plantuml diagrams without installing java, graphviz and other dependencies, making it the perfect fit for running plantuml within your CI pipeline.

## Usage

The container's entrypoint command runs plantuml with stdin/stdout piping enabled:

```bash
java -jar plantuml.jar -p
```

Building the image:
```bash
docker build -t plantuml .
```

When run without any more arguments, the docker image will output the diagram as svg:

```bash
cat diagram.puml | docker run --rm -i plantuml > diagram.svg
```

If you want to output the diagram in other format like PNG or PDF, you have to set the output type using `-t[format]`, example: `-tpng` or `-tpdf`:

```bash
cat diagram.puml | docker run --rm -i plantuml -tpdf > diagram.pdf
cat diagram.puml | docker run --rm -i plantuml -tpng > diagram.png
```
