# 找不到 Download？這樣同步（手機／電腦都適用）

> 本次 Agent 網址：  
> https://cursor.com/agents/bc-019fd8ad-098f-79d4-9e39-270931d3a196  
>  
> **若你是用手機看對話，左側通常沒有 Download 按鈕——這是正常的。**

---

## 方法一：改在「電腦」開同一個 Agent（最建議）

1. 用 **Chrome / Edge** 在電腦開上面網址（登入同一個 Cursor 帳號）
2. 或開 **Cursor 桌面版** → 輸入框下方 **Cloud** → 找到這次對話 **Cloud**
3. 在 Agent 頁面找：
   - **Artifacts**（截圖／影片／日誌）
   - **Remote desktop**（遠端桌面）→ 進入 VM 裡的檔案總管
4. 桌面版另可試：**Cmd/Ctrl + Shift + P** → **Open Agents Window** → 用 **Cmd+P** 搜尋檔案 → 開啟後複製內容

> Cursor 官方曾說明：部分檔案類型（zip、大量 md）**網頁版不一定有 Download 按鈕**，需用 API 或遠端桌面。

---

## 方法二：遠端桌面直接複製（不用 Download）

1. 電腦開 Agent 網址
2. 點 **Remote desktop control**（遠端桌面）
3. 在 VM 裡開檔案總管，路徑：

   ```
   /agent/雲端Agent/
   ```

4. 整包資料夾壓縮檔也在：

   ```
   /agent/雲端Agent-完整同步包.zip   （約 376KB）
   ```

5. 在遠端桌面裡：
   - 可上傳到 **Google Drive 網頁**（drive.google.com）
   - 或 **Email 寄給自己**
   - 或複製文字到本機（小檔案）

---

## 方法三：Google Drive 網頁手動（最簡單、不用 Download）

1. 電腦開 https://drive.google.com
2. **我的雲端硬碟** → 新建資料夾 **`雲端Agent`**
3. 若只能從手機操作：
   - 請 Agent 把**單篇**文章貼在對話裡（不實際，50 篇太多）
   - **改為**：用方法一或二先拿到 zip

4. 拿到 zip 後：
   - 解壓 → 全部貼到 `G:\我的雲端硬碟\雲端Agent\`

---

## 方法四：Cursor 桌面版 + Google Drive MCP（一勞永逸）

1. 電腦安裝 **Cursor 桌面版**
2. **Settings → MCP → Google-drive** → **登入授權**
3. 開新 Agent 或本機 Agent，說：

   ```
   請把 /agent/雲端Agent 整包上傳到我的 Google Drive 雲端Agent 資料夾
   ```

4. 授權成功後 Agent 可直接上傳，不用 Download

---

## 方法五：只要 SEO 50 篇？最小必要路徑

若你**現在只需要 SEO 文章**，可請 Agent 分批貼出（不推薦 50 篇全貼）。

**較佳做法：**

1. 電腦開 Agent → **Remote desktop**
2. 在 VM 用瀏覽器開 Google Drive → 上傳 `雲端Agent-完整同步包.zip`
3. 電腦從 Drive 下載 zip → 解壓到 `G:\我的雲端硬碟\雲端Agent\`

**SEO 文章路徑（解壓後）：**

```
G:\我的雲端硬碟\雲端Agent\工具\outputs\seo-articles\
```

應有 **51 個 .md**（50 篇 + 00-進度追蹤.md）

---

## 方法六：本機 Cursor 直接開雲端資料夾（已同步過的人）

若之前已同步過一次：

1. Cursor → **檔案 → 開啟資料夾**
2. `G:\我的雲端硬碟\雲端Agent`
3. 本次新檔需先用方法一～三補進去

---

## 檢查是否同步成功

```
□ G:\我的雲端硬碟\雲端Agent\工具\outputs\seo-articles\01-台灣人澳洲買房完整指南.md
□ … 共 50 篇
□ docs\neuronwriter-80分驗分與優化SOP.md
```

---

## 你是手機用户的話

| 步驟 | 動作 |
|------|------|
| 1 | 把 Agent 網址 **傳到電腦**（Line 傳給自己、Email） |
| 2 | **電腦**開網址 → Remote desktop 或 Agents Window |
| 3 | 上傳 zip 到 Google Drive → 本機解壓到 `G:\我的雲端硬碟\雲端Agent` |

**不要**在手機上找 Download——目前 Cursor 手機版通常沒有這個按鈕。

---

## 需要 Agent 幫忙時可複製這段

```
我用手機開 Agent，找不到 Download。
請指引我用 Remote desktop 把 /agent/雲端Agent-完整同步包.zip 上傳到 Google Drive，
或逐步教我在電腦 Cursor 開 Agents Window 複製 seo-articles 資料夾。
```
