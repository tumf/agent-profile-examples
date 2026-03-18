# Mini setup

この repo を Mac mini で使い始めるための最小手順。

**重要:** 既存のグローバル設定を `cp` で上書きしない。まず差分確認し、必要部分だけ取り込む。

## 1. clone

```bash
git clone https://github.com/tumf/agent-profile-examples.git
cd agent-profile-examples
```

## 2. Claude Code

Claude は **グローバル上書きせず**、まずはこの repo のサンプルを `--settings` / `--system-prompt` / `--mcp-config` で参照する運用が安全。

```bash
./claude/bin/run-builder.sh "implement feature X"
./claude/bin/run-reviewer.sh -p "review current diff"
```

必要なら MCP だけ個別追加:

```bash
claude mcp add context7 -- npx -y @upstash/context7-mcp
```

## 3. Codex

Codex は `~/.codex/config.toml` を丸ごと上書きせず、まずはこの repo の `codex/config.toml` を**参考として差分マージ**する。

特に既存の:

- `model`
- `projects.*`
- `mcp_servers.*`
- feature flags

を消さないこと。

安全なやり方:

```bash
mkdir -p ~/.codex
cp ~/.codex/config.toml ~/.codex/config.toml.bak 2>/dev/null || true
# その後、codex/config.toml を見ながら必要部分だけ取り込む
```

## 4. OpenCode

OpenCode は `OPENCODE_CONFIG` で切り替えられるので、**まずは global config を触らず** repo 同梱の config を使うのが安全。

```bash
./opencode/bin/run-builder.sh ~/services/some-repo
./opencode/bin/run-reviewer.sh ~/services/some-repo
./opencode/bin/run-operator.sh ~/services/some-repo
```

同等の生コマンド:

```bash
OPENCODE_CONFIG="$PWD/opencode/opencode.jsonc" opencode --agent builder ~/services/some-repo
```

global の `~/.config/opencode/opencode.jsonc` を使う場合でも、丸ごと上書きではなく手動マージを推奨。

## 5. 実行例

```bash
./codex/bin/run-builder.sh ~/services/some-repo
./claude/bin/run-reviewer.sh -p "review current diff"
./opencode/bin/run-builder.sh ~/services/some-repo
```

## 6. tumf 向けの次調整

- prompt を repo/domain ごとに overlay 化する
- GitHub token, Context7 token など必要な env を固める
- 危険コマンドの ask/allow を手元運用に合わせて詰める
- config merge を自動化するなら、まず backup + diff + patch の流れにする
