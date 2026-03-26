# bobinaboxsamples

Samples for BOB in a Box.

This repo is intended to hold two related things:

- a lightweight catalog on `main`
- runnable or reviewable sample branches that show Bob across the SDLC

## Recommended repo shape

Keep `main` small and descriptive:

- branch catalog
- sample metadata
- shared templates
- helper scripts

Put the actual sample stories on branches.

That gives you variety without turning `main` into a pile of binaries and unrelated assets.

## Branch families

Use two branch families.

`journey/*`
- one branch per SDLC stage, aligned to the Bob slide
- useful for storytelling, demos, and step-by-step walkthroughs

`sample/*`
- one branch per runnable sample pack
- useful for bobinabox UI testing, CLI testing, and concrete customer-style scenarios

## Initial branch set

### Journey branches

- `journey/10-plan-analyze-estate-discovery`
- `journey/20-design-architecture-blueprint`
- `journey/30-develop-java-modernization`
- `journey/40-test-hardening`
- `journey/50-deploy-rollout`
- `journey/60-maintain-observability`

### Sample branches

- `sample/00-smoke-test`
- `sample/10-docs-first-estate-review`
- `sample/20-repo-only-assessment`
- `sample/30-war-replatform`
- `sample/40-jar-service-refresh`
- `sample/50-ear-full-modernization`

## What each sample branch should contain

- `README.md`
  - what this sample is
  - what stage or story it supports
  - how to run it through bobinabox
- `instructions.md`
  - the prompt/instructions Bob should read first
- `sample.json`
  - machine-readable metadata for tooling later
- `inputs/`
  - small sample inputs that are safe to version
- `docs/`
  - supporting notes, architecture docs, or screenshots
- `expected/`
  - expected report shape, artifacts, or evaluation notes

Do not commit generated outputs from actual runs unless they are intentionally curated examples.

## Asset guidance

For large assets like `.ear`, `.war`, `.jar`, `.zip`, and `.pdf`, use Git LFS or keep only metadata/placeholders in git and store the real payloads elsewhere.

This repo already includes `.gitattributes` patterns for common large artifact types.

## Quick start

1. Stay on `main` to edit the catalog.
2. Create a new branch from `main`.
3. Run `scripts/new-sample-branch.sh <branch-name> "<title>"`.
4. Fill in `instructions.md`, `sample.json`, and the sample folders.

## Files in this repo

- [`catalog/scenarios.json`](/Users/laksri/Downloads/bobinaboxsamples/catalog/scenarios.json)
- [`catalog/demo-matrix.json`](/Users/laksri/Downloads/bobinaboxsamples/catalog/demo-matrix.json)
- [`docs/branching-model.md`](/Users/laksri/Downloads/bobinaboxsamples/docs/branching-model.md)
- [`docs/demo-asset-checklist.md`](/Users/laksri/Downloads/bobinaboxsamples/docs/demo-asset-checklist.md)
- [`templates/sample/README.md`](/Users/laksri/Downloads/bobinaboxsamples/templates/sample/README.md)
- [`templates/sample/instructions.md`](/Users/laksri/Downloads/bobinaboxsamples/templates/sample/instructions.md)
- [`templates/sample/sample.json`](/Users/laksri/Downloads/bobinaboxsamples/templates/sample/sample.json)
- [`scripts/new-sample-branch.sh`](/Users/laksri/Downloads/bobinaboxsamples/scripts/new-sample-branch.sh)
