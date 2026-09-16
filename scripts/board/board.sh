#!/usr/bin/env bash
# Board（the-board.jp）API から案件情報を取得するスクリプト。
# 事例プロジェクト（cases/）と案件を紐付けるための参照用（読み取りのみ）。
#
# 認証情報は環境変数 BOARD_API_KEY / BOARD_API_TOKEN、
# 無ければリポジトリ直下の .env（gitignore 済み）から読む。
# 実値をリポジトリ内のファイルに書かないこと（public リポジトリ）。
#
# 使い方:
#   scripts/board/board.sh projects [追加クエリ]   # 案件一覧（例: page=2&per_page=50）
#   scripts/board/board.sh project <案件ID>        # 案件詳細
#   scripts/board/board.sh clients [追加クエリ]    # 顧客一覧
#   scripts/board/board.sh raw <パス> [追加クエリ] # 任意エンドポイント（例: raw projects per_page=10）
#
# 注意: Board API のレートリミットに配慮し、連続呼び出しは 1 秒以上空けること。
set -euo pipefail

BASE_URL="https://api.the-board.jp/v1"
REPO_ROOT="$(cd "$(dirname "$0")/../.." && pwd)"

if [[ -z "${BOARD_API_KEY:-}" || -z "${BOARD_API_TOKEN:-}" ]]; then
  if [[ -f "$REPO_ROOT/.env" ]]; then
    set -a
    # shellcheck disable=SC1091
    source "$REPO_ROOT/.env"
    set +a
  fi
fi

if [[ -z "${BOARD_API_KEY:-}" || -z "${BOARD_API_TOKEN:-}" ]]; then
  echo "エラー: BOARD_API_KEY / BOARD_API_TOKEN が未設定です。" >&2
  echo ".env.example を .env にコピーして実値を設定してください。" >&2
  exit 1
fi

cmd="${1:-}"
case "$cmd" in
  projects) path="projects"; query="${2:-}" ;;
  project)
    [[ -n "${2:-}" ]] || { echo "エラー: 案件 ID を指定してください。" >&2; exit 1; }
    path="projects/$2"; query="${3:-}" ;;
  clients) path="clients"; query="${2:-}" ;;
  raw)
    [[ -n "${2:-}" ]] || { echo "エラー: パスを指定してください。" >&2; exit 1; }
    path="$2"; query="${3:-}" ;;
  *)
    sed -n '5,12p' "$0"; exit 1 ;;
esac

url="$BASE_URL/$path"
[[ -n "$query" ]] && url="$url?$query"

response=$(curl -sS --fail-with-body --max-time 30 \
  -H "Authorization: Bearer $BOARD_API_TOKEN" \
  -H "x-api-key: $BOARD_API_KEY" \
  -H "Accept: application/json" \
  "$url") || { echo "$response" >&2; exit 1; }

if command -v jq >/dev/null 2>&1; then
  echo "$response" | jq .
else
  echo "$response"
fi
