# Profile matrix

mini 上での初期おすすめマトリクス。

| command | profile | 主用途 | 理由 |
|---|---|---|---|
| claude | reviewer | PR review / 設計レビュー / 仕様監査 | 長めの文脈整理とレビューの質を出しやすい |
| claude | operator | 障害切り分けの説明責務が重いとき | 状況整理と説明がしやすい |
| codex | builder | 高速実装 / 小〜中規模変更 | 実装ループが軽い |
| codex | operator | ローカル保守 / 調査 / ログ確認 | exec/review/profile が扱いやすい |
| opencode | builder | 日常の反復開発 | config と agent をまとめて持ちやすい |
| opencode | reviewer | クイックレビュー | 軽量に回しやすい |

## tumf 向け初期推奨

最初に整えるならこの 4 本。

1. `codex-builder`
2. `claude-reviewer`
3. `codex-operator`
4. `opencode-builder`

## 役割分担の原則

- builder: 変更を作る
- reviewer: 変更を疑う
- operator: 状況を観測し、安全に戻す

1つの profile に全部やらせない。役割衝突を避ける。
