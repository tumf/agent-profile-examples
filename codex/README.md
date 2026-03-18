# Codex examples

## 確認した設定入口

- `~/.codex/config.toml`
- project-scoped `.codex/config.toml`
- `codex exec --profile <name>`
- `codex review`
- `codex mcp add|list|get|remove|login|logout`
- `-c key=value` override

## 収録例

- `codex/config.toml` に profiles と MCP 定義
- prompt は `codex/prompts/*.md`
- 起動例は `codex/bin/*.sh`

## 例

```bash
cp codex/config.toml ~/.codex/config.toml
./codex/bin/run-builder.sh /path/to/repo
./codex/bin/run-reviewer.sh
./codex/bin/run-operator.sh /path/to/service
```

## メモ

MCP は `config.toml` の `[mcp_servers.<name>]` で持つか、`codex mcp add ...` で追加する。
