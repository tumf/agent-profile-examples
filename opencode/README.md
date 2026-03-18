# OpenCode examples

## 確認した設定入口

- `~/.config/opencode/opencode.jsonc`
- `OPENCODE_CONFIG`
- `opencode agent create`
- `opencode agent list`
- `opencode mcp add|list|auth|logout|debug`
- `--agent`, `--prompt`, `--model`

## 収録例

- `opencode/opencode.jsonc`
- `opencode/agents/*.md`
- `opencode/prompts/*.md`
- `opencode/bin/*.sh`

## 重要

`~/.config/opencode/opencode.jsonc` をこの repo のファイルで**丸ごと上書きしない**。

この repo の `opencode/opencode.jsonc` は **設定断片の見本**であり、同時に `OPENCODE_CONFIG` で切り替えて使うサンプルでもある。

## 例

```bash
OPENCODE_CONFIG="$PWD/opencode/opencode.jsonc" opencode --agent builder ~/services/some-repo
./opencode/bin/run-builder.sh ~/services/some-repo
./opencode/bin/run-reviewer.sh ~/services/some-repo
./opencode/bin/run-operator.sh ~/services/some-repo
```

OpenCode の実際の agent 定義や config 読込方法はバージョン差分を受けやすいので、
`opencode agent create --help` / `opencode agent list` と合わせて調整する前提の雛形にしている。

## bin scripts について

`opencode/bin/*.sh` は `OPENCODE_CONFIG` をこの repo 内の `opencode/opencode.jsonc` に向けた wrapper。
既存の global config を汚さずに profile を切り替えるためのもの。
