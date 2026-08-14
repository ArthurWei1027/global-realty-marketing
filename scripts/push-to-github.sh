#!/bin/bash
# 在本機執行：建立 GitHub  repo 並推送
# 前置：gh auth login  或  export GITHUB_TOKEN=ghp_xxx

set -e
REPO_NAME="${1:-global-realty-marketing}"
cd "$(dirname "$0")/.."

if ! gh auth status &>/dev/null; then
  echo "請先登入 GitHub："
  echo "  gh auth login"
  echo "或："
  echo "  export GITHUB_TOKEN=你的token"
  echo "  echo \$GITHUB_TOKEN | gh auth login --with-token"
  exit 1
fi

gh repo create "$REPO_NAME" --public --source=. --remote=origin --push \
  --description "環球置業／澳華國際｜SEO 50篇、FB廣告、行銷工具與 SOP"

echo ""
echo "✅ 已推送：https://github.com/$(gh api user -q .login)/$REPO_NAME"
