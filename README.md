# PlantUML meets Docker

> **Fork notice:** This is a maintained fork of [aplr/plantuml](https://github.com/aplr/plantuml) by [@mathiasdonoso](https://github.com/mathiasdonoso).
> The original project appears unmaintained. Changes from the original are tracked in [CHANGELOG.md](CHANGELOG.md).

This docker container holds a full-fledged plantuml distribution with PDF-export support included.

This image works great for exporting plantuml diagrams without installing java, graphviz and other dependencies, making it the perfect fit for running plantuml in your CI pipeline or locally.

## Usage

You can pull the pre-built image from Docker Hub:
```bash
docker pull mathiasd88/plantuml-docker
```

Or build it yourself:
```bash
docker build -t plantuml .
```

When run without any more arguments, the docker image will output the diagram as svg:

```bash
cat diagram.puml | docker run --rm -i mathiasd88/plantuml-docker > diagram.svg
```

If you want to output the diagram in other format like PNG or PDF, you have to set the output type using `-t[format]`, example: `-tpng` or `-tpdf`:

```bash
cat diagram.puml | docker run --rm -i mathiasd88/plantuml-docker -tpdf > diagram.pdf
cat diagram.puml | docker run --rm -i mathiasd88/plantuml-docker -tpng > diagram.png
```
