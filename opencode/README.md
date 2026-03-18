# OpenCode examples

## 確認した設定入口

- `~/.config/opencode/opencode.jsonc`
- `opencode agent create`
- `opencode agent list`
- `opencode mcp add|list|auth|logout|debug`
- `--agent`, `--prompt`, `--model`

## 収録例

- `opencode/opencode.jsonc`
- `opencode/agents/*.md`
- `opencode/prompts/*.md`
- `opencode/bin/*.sh`

## 例

```bash
cp opencode/opencode.jsonc ~/.config/opencode/opencode.jsonc
./opencode/bin/run-builder.sh /path/to/project
./opencode/bin/run-reviewer.sh /path/to/project
./opencode/bin/run-operator.sh /path/to/project
```

## メモ

実際の agent 定義や読込方法はバージョン差分を受けやすいので、`opencode agent create --help` / `opencode agent list` と合わせて調整する前提の雛形にしている。
