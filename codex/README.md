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

## 重要

`~/.codex/config.toml` をこの repo のファイルで**丸ごと上書きしない**。

この repo の `codex/config.toml` は:

- `[profiles.*]` の例
- `[mcp_servers.*]` の例

を示すための雛形。既存の `model`, `projects`, `mcp_servers`, feature flags などと手動マージする前提。

## 例

```bash
cp ~/.codex/config.toml ~/.codex/config.toml.bak 2>/dev/null || true
# その後、codex/config.toml を見ながら必要部分だけ取り込む

./codex/bin/run-builder.sh /path/to/repo
./codex/bin/run-reviewer.sh
./codex/bin/run-operator.sh /path/to/service
```

## メモ

MCP は `config.toml` の `[mcp_servers.<name>]` で持つか、`codex mcp add ...` で追加する。
project-scoped `.codex/config.toml` を使える repo では、global ではなく project 側に寄せる方が安全。
