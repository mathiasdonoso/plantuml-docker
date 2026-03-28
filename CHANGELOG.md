# Changelog

All notable changes to this fork of [aplr/plantuml](https://github.com/aplr/plantuml) are documented here.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## [1.2026.2] - 2026-03-28

### Changed
- Updated base image from `openjdk:16-jdk-alpine3.12` to `openjdk:27-ea`
- Updated PlantUML version from `1.2024.7` to `1.2026.2`
- Replaced Alpine `apk` package manager with `microdnf` to match the new base image
- Replaced stale Docker Hub badges in README with fork notice and link to this changelog
- Removed standalone Java command from README — only Docker usage is maintained

## [1.2024.7] - 2024-09-29

### Changed
- Updated PlantUML version from `1.2020.6` to `1.2024.7`
- Improved README: added PNG format export example alongside the existing PDF example

## [Fork baseline] - 2024-03-26

Initial fork from [aplr/plantuml](https://github.com/aplr/plantuml) at commit `a5554f6`.

### Changed
- Updated Dockerfile to download the PlantUML `.jar` directly from GitHub releases instead of a third-party mirror
- Added Docker image build instructions to the README
