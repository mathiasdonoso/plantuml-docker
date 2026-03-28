# PlantUML meets Docker

> **Fork notice:** This is a maintained fork of [aplr/plantuml](https://github.com/aplr/plantuml) by [@mathiasdonoso](https://github.com/mathiasdonoso).
> The original project appears unmaintained. Changes from the original are tracked in [CHANGELOG.md](CHANGELOG.md).

This docker container holds a full-fledged plantuml distribution with PDF-export support included.

This image works great for exporting plantuml diagrams without installing java, graphviz and other dependencies, making it the perfect fit for running plantuml in your CI pipeline or locally.

## Usage

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
