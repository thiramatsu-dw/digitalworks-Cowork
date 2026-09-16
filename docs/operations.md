# LP 共同制作の初期設定・運用ルール

このリポジトリ（digitalworks-Cowork）で、複数人が Claude Code / Cowork を使って
LP を制作するためのルール。

## 1. 初期設定（各メンバー、初回のみ）

1. **リポジトリを開く** — Claude Code / Cowork のセッションで
   `thiramatsu-dw/digitalworks-Cowork` を開く（クローンする）。
2. **スキルの自動読み込みを確認** — リポジトリ直下の `CLAUDE.md` と
   `.claude/skills/lp-create/` はセッション開始時に自動で読み込まれる。
   「LP を作りたい」と伝えれば `lp-create` スキルに沿って進行する。
3. **プレビュー方法** — ビルド不要の静的 HTML なので、状況に応じて使い分ける:
   - **公開プレビュー（正式・共有用）**: `main` にマージされた LP は GitHub Pages で
     公開される → **https://thiramatsu-dw.github.io/digitalworks-Cowork/lp/**
     （`.github/workflows/deploy-pages.yml` が `main` への push で自動デプロイ）
   - 制作中（リモートセッション）: Claude にスクリーンショットを依頼する
     （Playwright + Chromium が利用可能。PC 幅 + モバイル幅の 2 枚を基本とする）
   - 制作中（手元の PC）: リポジトリ直下で `python3 -m http.server 8000` →
     `http://localhost:8000/lp/` を開く

## 2. ディレクトリと命名規則

```
lp/<product>/lp00N[-x]/index.html
```

- `<product>`: プロダクト名の英小文字（例: `workmonitor`）
- `lp00N`: 訴求単位の連番。**訴求（ターゲット・メッセージ）が変わったら番号を進める**
- `-b`, `-c` …: 同じ訴求のデザインバリアント（A/B テスト用）。元 LP は消さない
- 画像は `lp/<product>/assets/` に置き、LP からは `../assets/...` で相対参照
- パターンは `patterns/pNNN-<slug>/`（連番 + 英小文字ケバブケース）
- 導入事例は `cases/cNNN-<slug>/`（全プロダクト通し連番 + 英小文字ケバブケース。
  未許諾の実名を slug に使わない。詳細は `.claude/skills/case-content/SKILL.md`）

## 3. ブランチ・コミット運用

- **1 LP（または 1 パターン・1 事例）= 1 ブランチ = 1 PR** を基本とする
  - ブランチ名: `lp/<product>-lp00N` / `pattern/pNNN-<slug>` /
    `case/cNNN-<slug>` / `docs/<topic>`
  - 例外: 事例の**素材追加（inbox への追記のみ）**は軽量な作業のため、
    同じ事例の作業ブランチに随時積んで良い
- `main`（デフォルトブランチ）へは PR 経由でマージする。直接 push しない
- 同じ LP を複数人で同時に編集しない（1 ファイル完結のためコンフリクトが
  解消しづらい）。着手時に PR をドラフトで先に立てて「作業中」を可視化する
- コミットメッセージは「何を・なぜ」を 1 行で（例: `lp002-b: hero の CTA 文言を診断訴求に変更`）

## 4. レビュー運用

- PR には**スクリーンショット**（PC 幅 + モバイル幅）を添付する
- レビュー観点は `.claude/skills/lp-create/checklist.md` に従う。
  特に「訴求正本（プロダクト README）との整合」「トンマナ逸脱」「内部情報の混入」
- 文言（訴求コピー）の変更はプロダクトオーナーの承認を得る。
  デザインのみの変更は相互レビューで可

## 5. 訴求内容（コピー）の正本管理

- 各プロダクトの訴求の正本は `lp/<product>/README.md`
  （ターゲット・ペイン・バリュープロポジション・キーメッセージ・CTA 方針・NG 表現）
- LP の文言はここから書き起こし、矛盾させない。訴求を変えるときは
  **先に README を更新してから** LP に反映する
- 数値・機能の記述はプロダクト本体の仕様と矛盾させない

## 6. 公開リポジトリにおける注意（重要）

このリポジトリは **public** である。以下は絶対にコミットしない:

- ビジネス戦略・収益構造・転換率などの内部文脈
- 未公開の価格・顧客名・商談情報
- API キー・認証情報

導入事例は例外的に顧客情報を扱うが、**掲載許諾済みの範囲のみ**書ける。
許諾前の素材は匿名化（業種・規模表記）してから `cases/*/inbox/` に置く。
詳細な許諾ステータスの運用は `cases/README.md` と
`.claude/skills/case-content/SKILL.md` に従う。

内部戦略まで含む詳細なメッセージ基盤ドキュメントは、各プロダクトの
プライベートリポジトリ側（例: WorkMonitor-dev の `docs/marketing/`）で管理し、
このリポジトリには**外部公開可能なサマリのみ**を置く。
（運用上、リポジトリ自体を private 化することも推奨。）

## 7. パターンの蓄積サイクル

1. LP を作る（既存パターンから、または新規デザイン）
2. 新規デザインで良い型ができたら `patterns/` に PATTERN.md として登録
3. 次のプロダクトの LP は、カタログからパターンを選んで短時間で立ち上げる
4. パターンの改良は参照実装の更新 + PATTERN.md への追記で行う

## 8. 事例コンテンツの運用サイクル

1. 事例フォルダを作る（`cases/_template/` から `cases/cNNN-<slug>/`）
2. 素材を随時 `inbox/` にアップする（許諾前の実名は匿名化してから）
3. 素材が溜まったら `case.md` に**正本化**（構造化・書き起こし）
4. 掲載許諾 + レビューが揃ったら媒体別アウトプットを生成
   （Web ページ / セールススライド / LP 組み込みパーツ）
5. 事例一覧（`cases/README.md` の表 + `cases/index.html`）を毎回更新

手順の詳細・媒体別の規範は `.claude/skills/case-content/SKILL.md` に従う。
「事例を追加したい」と Claude に伝えればこのスキルに沿って進行する。

## 9. 新プロダクト追加の手順

1. `lp/<product>/README.md` を作る（訴求正本。lp/workmonitor/README.md を雛形に）
2. `lp/<product>/assets/` にスクリーンショット等を配置
3. パターンを選んで最初の LP（`lp001`）を制作
4. `lp/index.html`（カタログ）に追加
