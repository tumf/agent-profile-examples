#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
claude \
  --settings "$ROOT/claude/settings/operator.settings.json" \
  --mcp-config "$ROOT/claude/mcp/common.mcp.json" \
  --system-prompt "$(cat "$ROOT/claude/prompts/operator.md")" \
  "$@"
