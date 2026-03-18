# Mini setup

この repo を Mac mini で使い始めるための最小手順。

## 1. clone

```bash
git clone https://github.com/tumf/agent-profile-examples.git
cd agent-profile-examples
```

## 2. Claude Code

```bash
mkdir -p ~/.claude
cp claude/settings/builder.settings.json ~/.claude/builder.settings.json
cp claude/settings/reviewer.settings.json ~/.claude/reviewer.settings.json
cp claude/settings/operator.settings.json ~/.claude/operator.settings.json
```

必要なら MCP を追加:

```bash
claude mcp add context7 -- npx -y @upstash/context7-mcp
```

## 3. Codex

```bash
mkdir -p ~/.codex
cp codex/config.toml ~/.codex/config.toml
```

## 4. OpenCode

```bash
mkdir -p ~/.config/opencode
cp opencode/opencode.jsonc ~/.config/opencode/opencode.jsonc
```

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
