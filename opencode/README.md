# OpenCode examples

## 確認した設定入口

- `~/.config/opencode/opencode.jsonc`
- `OPENCODE_CONFIG`
- `opencode mcp add|list|auth|logout|debug`
- `--prompt`, `--model`

## 方針

OpenCode は **agent 機構に無理に依存せず**、profile ごとに専用 config を作り、`OPENCODE_CONFIG` で切り替える。

## 収録例

- `opencode/configs/builder.jsonc`
- `opencode/configs/reviewer.jsonc`
- `opencode/configs/operator.jsonc`
- `opencode/prompts/*.md`
- `opencode/bin/*.sh`

## 重要

`~/.config/opencode/opencode.jsonc` をこの repo のファイルで**丸ごと上書きしない**。

この repo の `opencode/configs/*.jsonc` は `OPENCODE_CONFIG` で切り替えて使うための profile 専用 config サンプル。

## 例

```bash
OPENCODE_CONFIG="$PWD/opencode/configs/builder.jsonc" opencode ~/services/some-repo
./opencode/bin/run-builder.sh ~/services/some-repo
./opencode/bin/run-reviewer.sh ~/services/some-repo
./opencode/bin/run-operator.sh ~/services/some-repo
```

## bin scripts について

`opencode/bin/*.sh` は `OPENCODE_CONFIG` を profile ごとの config に向けた wrapper。
既存の global config を汚さずに profile を切り替えるためのもの。
