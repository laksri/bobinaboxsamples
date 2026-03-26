# Demo Asset Checklist

This document turns the branch catalog into a concrete build sheet.

Use it when deciding what to create for each public demo branch.

## Shared branch contract

Every branch should include:

- `README.md`
- `instructions.md`
- `sample.json`
- `inputs/`
- `docs/`
- `expected/`

Public repo rule:

- use synthetic company names and fake-safe assets only
- do not commit real customer code, binaries, PDFs, or screenshots

## Journey branches

### `journey/10-plan-analyze-estate-discovery`

Story:

- AI identifies unimplemented requirements, gaps, risks, and readiness blockers.

Required assets:

- `instructions.md`
- `inputs/requirements.md`
- `inputs/user-stories.md`
- `inputs/nonfunctional-requirements.md`
- `docs/current-state-summary.md`

Optional assets:

- `docs/architecture-overview.pdf`
- `docs/dependency-inventory.csv`
- `docs/kpi-targets.md`

Expected outputs:

- `expected/modernization-report-outline.md`
- `expected/missing-requirements-example.md`
- `expected/risk-register-example.md`

Demo success looks like:

- Bob highlights missing requirements
- Bob names open questions
- Bob produces a prioritized next-step list

### `journey/20-design-architecture-blueprint`

Story:

- AI generates documented architectural blueprints from the agreed requirements.

Required assets:

- `instructions.md`
- `inputs/requirements.md`
- `docs/target-principles.md`
- `docs/integration-map.md`

Optional assets:

- `docs/topology.pdf`
- `docs/runtime-options.md`
- `docs/security-constraints.md`

Expected outputs:

- `expected/architecture-blueprint-outline.md`
- `expected/component-diagram-notes.md`
- `expected/adr-list.md`

Demo success looks like:

- Bob proposes target components and interfaces
- Bob selects a runtime and deployment model
- Bob documents the design decisions clearly

### `journey/30-develop-java-modernization`

Story:

- AI accelerates development with boilerplate, refactoring suggestions, and integrations.

Required assets:

- `instructions.md`
- `inputs/source-bundle.zip`
- `docs/build-notes.md`

Optional assets:

- `inputs/application.ear`
- `inputs/openapi.yaml`
- `docs/integration-contracts.md`

Expected outputs:

- `expected/boilerplate-files-list.md`
- `expected/transformation-summary.md`
- `expected/patch-notes.md`

Demo success looks like:

- Bob produces code changes or scaffolded components
- Bob externalizes config or modernizes packaging
- Bob emits a useful patch summary

### `journey/40-test-hardening`

Story:

- AI drives iterative stress, security, and resilience analysis.

Required assets:

- `instructions.md`
- `inputs/test-plan.md`
- `inputs/load-profile.json`
- `docs/security-guidelines.md`

Optional assets:

- `inputs/test-results.zip`
- `inputs/security-findings.pdf`
- `docs/slo-targets.md`

Expected outputs:

- `expected/test-gap-summary.md`
- `expected/performance-risk-report.md`
- `expected/hardening-recommendations.md`

Demo success looks like:

- Bob identifies weak points under load
- Bob flags security or usability concerns
- Bob gives concrete hardening actions

### `journey/50-deploy-rollout`

Story:

- AI supports rollout planning and predicts scaling requirements from traffic inputs.

Required assets:

- `instructions.md`
- `inputs/traffic-report.csv`
- `docs/deployment-runbook.md`
- `docs/platform-constraints.md`

Optional assets:

- `inputs/values.yaml`
- `inputs/deployment.yaml`
- `docs/release-plan.md`

Expected outputs:

- `expected/rollout-plan.md`
- `expected/scaling-recommendation.md`
- `expected/capacity-assumptions.md`

Demo success looks like:

- Bob predicts scaling shape from traffic patterns
- Bob proposes rollout steps and guardrails
- Bob identifies deploy-time risks and checks

### `journey/60-maintain-observability`

Story:

- AI supports runtime tuning, monitoring, and continuous improvement.

Required assets:

- `instructions.md`
- `inputs/incident-summary.md`
- `inputs/observability-report.md`
- `docs/service-kpis.md`

Optional assets:

- `docs/dashboard-screens.md`
- `docs/error-budget.md`
- `inputs/cost-trends.csv`

Expected outputs:

- `expected/optimization-plan.md`
- `expected/monitoring-gap-analysis.md`
- `expected/continuous-improvement-backlog.md`

Demo success looks like:

- Bob recommends tuning and monitoring improvements
- Bob ties suggestions to KPIs and incidents
- Bob creates a prioritized follow-up backlog

## Sample branches

### `sample/00-smoke-test`

Purpose:

- Validate the bobinabox pipeline quickly.

Required assets:

- `instructions.md`

Expected outputs:

- `expected/modernization-report-outline.md`

Pass criteria:

- request accepted
- job queued
- worker completes
- report artifact exists

### `sample/10-docs-first-estate-review`

Purpose:

- Show a discovery-first engagement before code access exists.

Required assets:

- `instructions.md`
- `inputs/architecture-overview.pdf`
- `inputs/support-matrix.pdf`

Expected outputs:

- `expected/discovery-report-outline.md`
- `expected/open-questions.md`

Pass criteria:

- Bob summarizes the estate from docs
- Bob lists missing information clearly

### `sample/20-repo-only-assessment`

Purpose:

- Show source-driven analysis from a repo URL without binary uploads.

Required assets:

- `instructions.md`
- `sample.json` with `source.repoUrl`

Expected outputs:

- `expected/repo-assessment-outline.md`
- `expected/runtime-observations.md`

Pass criteria:

- repo clone path works
- Bob assesses source layout and modernization path

### `sample/30-war-replatform`

Purpose:

- Show web-tier modernization from a WAR package.

Required assets:

- `instructions.md`
- `inputs/billing-ui.war`
- `inputs/deployment-notes.pdf`

Expected outputs:

- `expected/war-modernization-report.md`
- `expected/runtime-change-notes.md`

Pass criteria:

- Bob identifies servlet/runtime assumptions
- Bob recommends container packaging and config changes

### `sample/40-jar-service-refresh`

Purpose:

- Show runnable JAR modernization with optional source transformation.

Required assets:

- `instructions.md`
- `inputs/order-service.jar`
- `inputs/order-service-src.zip`

Optional assets:

- `inputs/service-checklist.pdf`

Expected outputs:

- `expected/jar-report-outline.md`
- `expected/source-change-summary.md`

Pass criteria:

- Bob handles binary plus source zip
- Bob generates transformation-oriented output

### `sample/50-ear-full-modernization`

Purpose:

- Show the richest combined path with binary, source, docs, and repo reference.

Required assets:

- `instructions.md`
- `inputs/payments.ear`
- `inputs/source-bundle.zip`
- `inputs/runbook.pdf`
- `sample.json` with source repo reference

Expected outputs:

- `expected/full-modernization-report.md`
- `expected/patch-summary.md`
- `expected/artifact-manifest.md`

Pass criteria:

- Bob handles mixed asset types together
- Bob emits report + patch-oriented outputs
- Bob demonstrates the strongest end-to-end story
