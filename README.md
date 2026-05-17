# redm-server-data

[![Validate Repository](https://github.com/Trembita-Games/redm-server-data/actions/workflows/validate.yaml/badge.svg)](https://github.com/Trembita-Games/redm-server-data/actions/workflows/validate.yaml)

Curated standalone RedM/RDR2 server resources for improving the vanilla server experience.

This repository is intended to complement [`redm-vanilla-template`](https://github.com/Trembita-Games/redm-vanilla-template) with optional server resources, world baseline improvements and documented testing workflows.

---

## Important Notice

This repository is not an official Cfx.re repository.

It does not vendor default Cfx.re resources.

Default Cfx.re resources should still be installed through `redm-vanilla-template` setup scripts or from the upstream `citizenfx/cfx-server-data` source.

---

## Purpose

The goal of this repository is to provide a clean place for standalone RedM/RDR2 resources that improve a minimal vanilla server experience.

Initial focus areas:

- world loading investigation
- missing building issues
- missing glass issues
- missing collision issues
- partially loaded locations
- testing checklists for multiplayer validation
- curated standalone resources

---

## What This Is Not

This repository is not:

- an RP framework
- a VORP/RSG replacement
- an inventory system
- an economy system
- a jobs system
- a housing system
- a character system
- a leaked resource pack
- a copy of default Cfx.re server data

---

## Repository Structure

```txt
docs/       -> Documentation, known issues and testing notes
resources/  -> Curated standalone resources
examples/   -> Example configuration snippets
```

---

## Documentation

- [Documentation Index](docs/README.md)
- [Resource Catalog](docs/resource-catalog.md)
- [Known Issues](docs/known-issues.md)
- [Testing Checklist](docs/testing-checklist.md)

---

## Usage

This repository is designed to be used together with `redm-vanilla-template`.

Example future usage:

```cfg
ensure some-standalone-resource
```

Specific resources will be documented in the resource catalog once they are added.

---

## Current Status

This repository is currently in the initial structure and investigation phase.

No production-ready standalone resources are included yet.

---

## License

MIT License
