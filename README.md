# digitalworks-Cowork — LP 制作ワークスペース

株式会社デジタルワークスのランディングページ（LP）を、複数プロダクト・複数訴求で
制作・蓄積するためのリポジトリ。Claude Code / Cowork で複数人が共同制作することを
前提に、共通ルール・トーン&マナー・デザインパターンを一元管理する。

## クイックスタート

1. Claude Code / Cowork でこのリポジトリを開く
2. 「〇〇（プロダクト）の LP を作りたい」と伝える
   → `lp-create` スキルが起動し、パターン選択から公開前チェックまで案内される
3. プレビュー: `python3 -m http.server 8000` → http://localhost:8000/lp/

## 構造

| パス | 内容 |
|------|------|
| [`lp/index.html`](lp/index.html) | LP カタログ（一覧） |
| `lp/<product>/lp00N/` | LP 本体（プロダクト別・訴求別連番） |
| `lp/<product>/README.md` | プロダクト訴求の正本 |
| [`patterns/`](patterns/README.md) | デザインパターンカタログ（再利用アセット） |
| `.claude/skills/lp-create/` | LP 制作の基盤スキル（ルール・トンマナ・チェックリスト） |
| [`docs/operations.md`](docs/operations.md) | 共同制作の運用ルール |

## 現在の LP

- **WorkMonitor lp002** — 中小企業経営者向け（パターン p001 saas-zigzag）
  `lp/workmonitor/lp002/index.html`

## 運用の要点

- 1 LP = 1 ブランチ = 1 PR。`main` へは PR 経由でマージ
- 文言変更は訴求正本（プロダクト README）を先に更新
- 良いデザインができたら `patterns/` にパターン登録して資産化
- **このリポジトリは public。内部情報は書かない**（詳細: docs/operations.md §6）
