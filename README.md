# agent-profile-examples

`claude`, `codex`, `opencode` の **コマンドごとの実際の設定方法の違い** を踏まえた、用途別プロファイルのサンプル集です。

このリポジトリは次を目的にしています。

- 抽象的な `MCP.md` / `SKILLS.md` ではなく、**各CLIが実際に読む形式**で置く
- `builder` / `reviewer` / `operator` のような役割を、**command × profile** 単位で管理する
- 共通の役割定義と、CLIごとの差分を分離する

## 方針

- **role spec が正本**
- 各 CLI 用の設定ファイルは role spec から派生させる
- 実際の設定面は各 CLI に合わせる

## CLI ごとの違い

### Claude Code

主な設定入口:

- CLI flags: `--system-prompt`, `--append-system-prompt`, `--settings`, `--mcp-config`, `--agents`
- `~/.claude/settings.json`
- `claude mcp ...`

この repo では以下を例示:

- `claude/prompts/*.md`
- `claude/settings/*.json`
- `claude/mcp/*.json`
- `claude/bin/*.sh`

### Codex

主な設定入口:

- `~/.codex/config.toml`
- `.codex/config.toml`
- `--profile`
- `-c key=value`
- `codex mcp ...`

この repo では以下を例示:

- `codex/config.toml`
- `codex/prompts/*.md`
- `codex/bin/*.sh`

### OpenCode

主な設定入口:

- `~/.config/opencode/opencode.jsonc`
- `opencode agent create`
- `opencode mcp ...`
- `--agent`, `--prompt`, `--model`

この repo では以下を例示:

- `opencode/opencode.jsonc`
- `opencode/prompts/*.md`
- `opencode/bin/*.sh`
- `opencode/agents/*.md`

## 収録 profile

- `builder`
- `reviewer`
- `operator`

## ディレクトリ

```text
role-specs/
  builder.md
  reviewer.md
  operator.md

claude/
  prompts/
  settings/
  mcp/
  bin/

codex/
  config.toml
  prompts/
  bin/

opencode/
  opencode.jsonc
  prompts/
  agents/
  bin/
```

## 注意

- これは**雛形**です。実運用では利用ツールや権限に応じて調整してください。
- 危険操作、外部送信、deploy などは別途承認境界を設ける前提です。
- MCP サーバ名や command は例示です。実際の環境に合わせて書き換えてください。
