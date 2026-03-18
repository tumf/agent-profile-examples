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

## 重要

`~/.config/opencode/opencode.jsonc` をこの repo のファイルで**丸ごと上書きしない**。

この repo の `opencode/opencode.jsonc` は **設定断片の見本**。既存の global config と手動マージする前提。

## 例

```bash
# まず既存設定を退避
cp ~/.config/opencode/opencode.jsonc ~/.config/opencode/opencode.jsonc.bak 2>/dev/null || true

# その後、この repo の opencode/opencode.jsonc を見ながら
# instructions / permission / mcp の必要部分だけ取り込む
```

OpenCode の実際の agent 定義や config 読込方法はバージョン差分を受けやすいので、
`opencode agent create --help` / `opencode agent list` と合わせて調整する前提の雛形にしている。

## bin scripts について

`opencode/bin/*.sh` は **agent 名で起動する最小 wrapper**。事前にその agent 名が使える状態へ設定してある前提。
