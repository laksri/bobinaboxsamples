# Smoke Test Sample

This branch is the smallest useful bobinabox scenario.

It is designed to prove the end-to-end path:

- create job
- upload one small instructions file
- mark uploads complete
- run the worker
- get a report artifact back

## Purpose

Use this branch when you want the fastest confidence check for:

- bobinabox UI flow
- bobinabox CLI flow
- COS upload path
- Code Engine worker execution
- artifact generation

## Assets in this branch

- [`instructions.md`](/Users/laksri/Downloads/bobinaboxsamples/instructions.md)
- [`sample.json`](/Users/laksri/Downloads/bobinaboxsamples/sample.json)
- [`inputs/README.md`](/Users/laksri/Downloads/bobinaboxsamples/inputs/README.md)
- [`docs/demo-flow.md`](/Users/laksri/Downloads/bobinaboxsamples/docs/demo-flow.md)
- [`expected/modernization-report-outline.md`](/Users/laksri/Downloads/bobinaboxsamples/expected/modernization-report-outline.md)

## Suggested bobinabox submission

- `projectId`: `smoke-test`
- `goal`: `Validate that bobinabox can accept a request, queue it, run Bob, and write a report.`
- upload only `instructions.md`

## Expected outputs

- `output/modernization-report.md`
- `logs/bob.stdout.log`
- `logs/bob.stderr.log`

## Public-safe note

This branch contains only synthetic text assets and no customer material.
