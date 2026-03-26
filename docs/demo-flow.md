# Demo Flow

## Branch

`sample/00-smoke-test`

## Recommended demo steps

1. Open the bobinabox UI or CLI.
2. Use the values from `sample.json`.
3. Upload `instructions.md`.
4. Complete uploads so the job reaches `queued`.
5. Submit the worker job.
6. Open the report artifact.

## What this proves

- the API request succeeds
- COS upload works
- the worker starts
- artifacts come back

## What this does not prove

- Git repo handling
- binary ingestion
- source transformation
- large-file behavior
