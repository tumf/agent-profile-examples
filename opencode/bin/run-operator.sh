#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
OPENCODE_CONFIG="$ROOT/opencode/opencode.jsonc" \
  opencode --agent operator "$@"
