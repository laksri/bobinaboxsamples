#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 2 ]]; then
  echo "Usage: $0 <branch-name> <title>" >&2
  echo "Example: $0 sample/30-war-replatform \"WAR replatform\"" >&2
  exit 1
fi

BRANCH_NAME="$1"
TITLE="$2"
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

cd "${ROOT_DIR}"

if [[ -n "$(git status --porcelain)" ]]; then
  echo "Working tree is not clean. Commit or stash changes first." >&2
  exit 1
fi

git checkout main >/dev/null 2>&1 || true
git checkout -b "${BRANCH_NAME}"

mkdir -p docs inputs expected

if [[ ! -f README.md ]]; then
  cp templates/sample/README.md README.md
fi
if [[ ! -f instructions.md ]]; then
  cp templates/sample/instructions.md instructions.md
fi
if [[ ! -f sample.json ]]; then
  cp templates/sample/sample.json sample.json
fi

perl -0pi -e "s/Sample Title/${TITLE}/g" README.md sample.json

echo
echo "Created branch: ${BRANCH_NAME}"
echo "Next steps:"
echo "  1. Edit README.md, instructions.md, and sample.json"
echo "  2. Add files under inputs/, docs/, and expected/"
echo "  3. Commit locally when ready"
