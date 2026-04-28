@echo off
chcp 65001 >nul
echo === 典陸教育 部署 GitHub Pages ===
echo.
echo 確認當前目錄為網站根目錄...
if not exist index.html (
    echo [錯誤] 找不到 index.html，請確認你在「教用網頁好讀版」資料夾內執行此檔。
    pause
    exit /b 1
)

echo.
echo 步驟 1/5 - git init
git init -b main

echo.
echo 步驟 2/5 - git add
git add .

echo.
echo 步驟 3/5 - git commit
git -c user.email="silentcountry0109@gmail.com" -c user.name="silentcountry0109-hash" commit -m "Initial deploy - 國中自然 歷屆考題網頁好讀版"

echo.
echo 步驟 4/5 - 設定 remote
git remote add origin https://github.com/silentcountry0109-hash/cap-pastpapers.git 2>nul
git remote set-url origin https://github.com/silentcountry0109-hash/cap-pastpapers.git

echo.
echo 步驟 5/5 - push
echo （第一次 push 會跳出登入視窗，請用瀏覽器登入 GitHub）
git push -u origin main

echo.
echo === 完成！===
echo 預計幾分鐘後可在以下網址看到網站：
echo https://silentcountry0109-hash.github.io/cap-pastpapers/
echo.
echo 若 Pages 尚未啟用，請到 https://github.com/silentcountry0109-hash/cap-pastpapers/settings/pages
echo Source 選擇 main 分支根目錄，Save 即可。
pause
