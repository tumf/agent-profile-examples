# Claude Code examples

## 確認した設定入口

- `claude --system-prompt`
- `claude --settings <file-or-json>`
- `claude --mcp-config <configs...>`
- `claude --agents <json>`
- `claude mcp add|list|get|remove`

## 収録例

- prompt は `claude/prompts/*.md`
- settings は `claude/settings/*.json`
- MCP は `claude/mcp/*.json`
- 起動例は `claude/bin/*.sh`

## 例

```bash
./claude/bin/run-builder.sh "implement feature X"
./claude/bin/run-reviewer.sh -p "review current diff"
./claude/bin/run-operator.sh "diagnose why service is unhealthy"
```
