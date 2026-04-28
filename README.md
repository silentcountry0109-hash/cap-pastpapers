# 典陸教育集團 ‧ 國中自然．歷屆考題網頁好讀版

DIANLU EDUCATION GROUP — Junior-High Science Past Exam Reading Site

## 簡介
本站為國中自然科學歷屆會考及大考考題的網頁版本，依年級主題分為三冊（生物、理化上、理化下與地科），共 34 章 / 747 頁，涵蓋 90 年基測至 113 年會考。所有頁面採行動裝置最佳化排版，適用所有現代瀏覽器，無須登入。

## 部署方式
這是一個純靜態網站，可直接部署在 GitHub Pages、Cloudflare Pages、Netlify、Vercel 等任一靜態主機。

### GitHub Pages
1. 建立新的 GitHub repo（名稱建議：`exam` 或 `kaohsiung-jhs-science`）。
2. 在本資料夾下執行：
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/<你的帳號>/<repo>.git
   git push -u origin main
   ```
3. 在 repo 設定中啟用 GitHub Pages，Source 選擇 `main` 分支根目錄。
4. 預設網址會是 `https://<你的帳號>.github.io/<repo>/`。

## 目錄結構
```
site/
├── index.html              首頁（年級選擇）
├── vol1.html               第一冊章節列表
├── vol2.html               第二冊章節列表
├── vol3.html               第三冊章節列表
├── ch/                     各章節閱讀頁
│   ├── vol1/<slug>/index.html
│   ├── vol2/<slug>/index.html
│   └── vol3/<slug>/index.html
├── 404.html
├── assets/
│   ├── css/style.css
│   ├── js/app.js
│   └── pages/              章節頁面圖片（依 vol/slug 分類）
└── README.md
```

## 維護
若需更新試題，將新版 PDF 放入 `src/章節_pdf/`，重新執行 `build/render_chapters.py` 與 `build/build_site.py` 即可。

© 114 學年度 典陸教育集團 教研中心
