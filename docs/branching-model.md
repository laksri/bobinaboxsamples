# Branching Model

Use `main` as the catalog branch and keep it intentionally light.

## Why not put everything on `main`

- sample payloads can get large quickly
- different samples represent different stories and stages
- branch-by-sample makes demos cleaner
- the repo stays easier to browse

## Recommended naming

### Journey branches

Format:

```text
journey/<order>-<stage>-<story>
```

Examples:

- `journey/10-plan-analyze-estate-discovery`
- `journey/20-design-architecture-blueprint`
- `journey/30-develop-java-modernization`
- `journey/40-test-hardening`
- `journey/50-deploy-rollout`
- `journey/60-maintain-observability`

### Sample branches

Format:

```text
sample/<order>-<scenario>
```

Examples:

- `sample/00-smoke-test`
- `sample/10-docs-first-estate-review`
- `sample/20-repo-only-assessment`
- `sample/30-war-replatform`
- `sample/40-jar-service-refresh`
- `sample/50-ear-full-modernization`

## Suggested usage

Use `journey/*` when you want to tell the Bob story across the SDLC.

Use `sample/*` when you want to test bobinabox with concrete inputs such as:

- `instructions.md`
- `EAR/WAR/JAR`
- source zip
- Git repo URL
- PDFs

## Growth rule

When a branch starts mixing multiple unrelated stories, split it.

Prefer:

- one branch = one clear scenario

Avoid:

- one branch = every possible artifact and workflow at once
