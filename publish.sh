#!/bin/zsh
set -euo pipefail

cd "$(dirname "$0")"
cp outputs/index.html index.html
git add index.html

if git diff --cached --quiet; then
  echo "ไม่มีการเปลี่ยนแปลงสำหรับเผยแพร่"
  exit 0
fi

git commit -m "Update LALIZA portal"
git push origin main
echo "เผยแพร่แล้ว: https://nantawat-bobbi.github.io/lalizaskincommerce/"
