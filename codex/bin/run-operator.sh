#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
codex exec \
  --profile operator \
  -C "${1:-.}" \
  "$(cat "$ROOT/codex/prompts/operator.md")"
