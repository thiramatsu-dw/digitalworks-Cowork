# Board（the-board.jp）連携

案件管理システム Board から案件情報を取得し、事例プロジェクト（`cases/`）と
紐付けるためのツール。**読み取り専用**の用途（案件の参照）に限定する。

## セットアップ

1. **認証情報の設定** — リポジトリ直下で:

   ```bash
   cp .env.example .env
   # .env に Board の API キーと API トークンを記入
   ```

   `.env` は gitignore 済み。**実値をリポジトリ内の他のファイルに書かない**
   （このリポジトリは public。API キーは Board の設定画面から発行・再発行できる）。

2. **リモートセッション（Claude Code on the web / Cowork）で使う場合** —
   実行環境の設定で以下が必要:
   - ネットワーク許可ドメインに `api.the-board.jp` を追加
   - 環境変数 `BOARD_API_KEY` / `BOARD_API_TOKEN` を環境設定に登録
     （環境変数があれば `.env` は不要）

## 使い方

```bash
scripts/board/board.sh projects                  # 案件一覧
scripts/board/board.sh projects "per_page=50"    # クエリ付き
scripts/board/board.sh project 12345             # 案件詳細
scripts/board/board.sh clients                   # 顧客一覧
scripts/board/board.sh raw <パス> [クエリ]        # 任意エンドポイント
```

- API 仕様は Board 公式の開発者ドキュメント（developers.the-board.jp）を正とする
- レートリミットがあるため連続呼び出しは 1 秒以上空ける

## 事例との紐付けルール

- 事例側の正本 `cases/cNNN-<slug>/case.md` のメタ情報に **Board 案件番号**を記録する
- **案件名・顧客名・金額など案件の中身はリポジトリに書かない**（商談情報のため）。
  リポジトリに書けるのは案件番号（数値 ID）までとし、詳細は Board 側で参照する
- 事例作成時に Claude へ「Board の案件 XXXX の情報を参照して」と依頼すると、
  このスクリプト経由で案件情報を取得し、掲載許諾ルールに従って匿名化・
  書き起こしを行う（`case-content` スキル参照）
