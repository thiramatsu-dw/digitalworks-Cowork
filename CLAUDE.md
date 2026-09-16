# digitalworks-Cowork

株式会社デジタルワークスの LP（ランディングページ）と導入事例コンテンツを
複数人・複数プロダクトで制作・蓄積する共有ワークスペース。

## 最重要ルール

- **LP に関する作業（新規作成・改修・バリアント追加・パターン登録）は、
  必ず `lp-create` スキル（`.claude/skills/lp-create/SKILL.md`）に従うこと。**
- **導入事例に関する作業（事例登録・素材追加・正本化・アウトプット生成）は、
  必ず `case-content` スキル（`.claude/skills/case-content/SKILL.md`）に従うこと。**
- LP は自己完結の静的 HTML 1 ファイル（外部 CDN・ビルド工程なし）。
- 文言はプロダクトの訴求正本 `lp/<product>/README.md` から書き起こす。
  事例コンテンツの正本は `cases/cNNN-<slug>/case.md`。
- このリポジトリは public。内部戦略・未公開価格・認証情報は絶対に書かない。
  掲載許諾のない顧客名は事例素材（inbox）にも書かない。

## 構造

- `lp/<product>/lp00N[-x]/index.html` — LP 本体（`lp/index.html` がカタログ）
- `lp/<product>/assets/` — プロダクト共通画像
- `lp/<product>/README.md` — プロダクト訴求の正本
- `cases/cNNN-<slug>/` — 事例プロジェクトフォルダ（`cases/index.html` がカタログ、
  `cases/README.md` が一覧の正本。inbox 素材 → case.md 正本 → outputs 媒体別）
- `patterns/` — デザインパターンカタログ（再利用アセット）
- `docs/operations.md` — 共同制作の運用ルール（ブランチ・レビュー・命名）

## プレビュー

- 公開版（`main` マージ後）: https://thiramatsu-dw.github.io/digitalworks-Cowork/lp/（GitHub Pages 自動デプロイ）
- ローカル: `python3 -m http.server 8000` → `http://localhost:8000/lp/`
- スクリーンショット確認には Playwright + Chromium（`/opt/pw-browsers/chromium`）が使える。
