#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
OPENCODE_CONFIG="$ROOT/opencode/configs/operator.jsonc" \
  opencode "$@"
