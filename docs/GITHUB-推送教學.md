# 推送到 GitHub（3 種方式）

> 專案已在本機準備好：`global-realty-marketing/`  
> 含 **50 篇 SEO 文章**、工具、SOP、FB 廣告文案

---

## 方式一：GitHub CLI（最簡單）

### 1. 安裝 gh

https://cli.github.com/

### 2. 登入

```bash
gh auth login
```

### 3. Clone 或進入專案資料夾後推送

若 Agent 已幫你建好 repo 並給你網址：

```bash
git clone https://github.com/你的帳號/global-realty-marketing.git
```

若你要**自己新建** repo 並推送本資料夾：

```bash
cd global-realty-marketing
chmod +x scripts/push-to-github.sh
./scripts/push-to-github.sh
```

---

## 方式二：GitHub 網頁新建 + 上傳

1. 開 https://github.com/new
2. Repository name：`global-realty-marketing`
3. Public → **Create repository**
4. 選 **uploading an existing file**
5. 把 `global-realty-marketing` 資料夾內**所有檔案**拖曳上傳（可分批）

---

## 方式三：Cursor Cloud Agent 已推送時

若 Agent 回覆已推送成功，直接：

```bash
git clone https://github.com/你的帳號/global-realty-marketing.git
```

SEO 文章在：`seo-articles/`

---

## 複製到 Google Drive 官網

Clone 後：

```
G:\我的雲端硬碟\公司\澳華國際\官網\seo-articles\
```

← 複製 `seo-articles\` 整包

---

## 常見問題

**Q：repo 名稱可以改嗎？**  
→ 可以，例如 `aohua-website-seo`

**Q：要設 Private 嗎？**  
→ 建議 **Private**（含行銷策略）。`gh repo create --private`
