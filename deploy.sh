#!/usr/bin/env bash
set -e
echo "=== 典陸教育 部署 GitHub Pages ==="
echo
if [ ! -f index.html ]; then
    echo "[錯誤] 找不到 index.html，請確認你在「教用網頁好讀版」資料夾內執行。"
    exit 1
fi
echo "步驟 1/5 - git init"
git init -b main
echo
echo "步驟 2/5 - git add"
git add .
echo
echo "步驟 3/5 - git commit"
git -c user.email="silentcountry0109@gmail.com" -c user.name="silentcountry0109-hash" \
    commit -m "Initial deploy - 國中自然 歷屆考題網頁好讀版"
echo
echo "步驟 4/5 - 設定 remote"
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/silentcountry0109-hash/cap-pastpapers.git
echo
echo "步驟 5/5 - push"
git push -u origin main
echo
echo "=== 完成！==="
echo "https://silentcountry0109-hash.github.io/cap-pastpapers/"
